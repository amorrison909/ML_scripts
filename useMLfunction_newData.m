% this is the main script for running ML models using NEW training sets (not for the existing models). 

% this script uses the runMLNew function. Please make sure it is in the same folder as this script.

% the purpose of this script is to have a handy way to run through all the
% splits for all the methods to generate results. As long as the data
% format is in the same format as it has been for the time that we've been
% working on it, it should work. -- This script
% should handle everything for you. 

% this script does not save results for you, you must save them manually 

% to do for running new data:
    % 1. set the filepath. This should be where the train/test splits are
    % saved (note the extra \ at the end)
    % 2. make sure your file names are in the correct format. this should
    % be the method, either train/test, and then the replicate (ex.
    % "ftir_train_1.csv"). You can have as many replicates as wanted, but
    % need to set that parameter. All files should be in the folder set in
    % the filepath
    % 3. Set the parameters, which include the methodlist, model, number of
    % replicates, and number of classes (categories the model is
    % distinguishing)
    % 4. run the model! hopefully there are no errors, but troubleshoot as
    % needed
    % 5. Save results. must save manually. 
    % any questions feel free to contact me, Alexandra Morrison aemorrison0@gmail.com
 
clear
clc

%%%%%%%%%%%%%%%%%%%%%% Enter Filepath Here %%%%%%%%%%%%%%%%%%%%%%%%%%%%
filepath = 'C:\Users\aemor\Documents\Alexandra WHOI\ML_scripts\exampleTestFiles\';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
methodlist = {'ftir'}; %options are 'ftir', 'xrfSpec', 'xrfConc', 'libs', 'qcl', 'refIR'
model = {'discr'}; %options are 'knn', 'discr', 'svm','tree'. Only choose one. (if you have more than 2 classes, can't do SVM with this script)
replicates = 1; % number of replicates you want to run, should be a number
classes = 6; % number of classes in your model, should be a number
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


for j = 1:length(methodlist) 
method = methodlist{j};
pctCorrectList = zeros(1,replicates);
confusionMatrixList = zeros(classes,classes,replicates);
for i = 1:replicates
    splitNumber = num2str(i);
    [pctCorrectTest,confusionMatrix,tree] = runMLNew(method,model,splitNumber,filepath);
    pctCorrectList(i) = pctCorrectTest;
    confusionMatrixList(:,:,i)=confusionMatrix;
end

meanPctCorrect = mean(pctCorrectList);
stdPctCorrect = std(pctCorrectList);
confusionMatrixMean = mean(confusionMatrixList,3);
confusionMatrixStd = std(confusionMatrixList,0,3);


end
clearvars -except confusionMatrixList confusionMatrixMean confusionMatrixStd meanPctCorrect methodlist model pctCorrectList stdPctCorrect tree
%  view(tree,'mode','graph') %% turn on/off for tree
