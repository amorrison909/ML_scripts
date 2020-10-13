% this is the main script for running ML models using EXISTING models. 

% this script uses the runMLModels function. Please make sure it is in the same folder as this script.

% this script uses existing models to analyze plastic data. The data should
% be in the same format as original data, with the same model imputs.
% example files are saved in the google drive 

% this script does not save results for you, you must save them manually 

% to do for running new data:
    % 1. set the filepath. This should be where the test data and model is
    % saved (note the extra \ at the end)
    % 2. Set the filename with the data you want to test. Make sure data is
    % in correct format
    % 3. Set the modelName, models should be saved in the same folder 
    % 4. run the model! hopefully there are no errors, but troubleshoot as
    % needed
    % 5. Save results. must save manually. 
    % any questions feel free to contact me, Alexandra Morrison aemorrison0@gmail.com
 
clear
clc

%%%%%%%%%%%%%%%%%%%%%% Enter Filepath Here %%%%%%%%%%%%%%%%%%%%%%%%%%%%
filepath = 'D:\second\ML_scripts\';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'ftir_test_1.csv';
modelName = 'ftir_discr.mat';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% running the model
[pctCorrectTest,confusionMatrix] = runMLModels(filename,modelName,filepath);
