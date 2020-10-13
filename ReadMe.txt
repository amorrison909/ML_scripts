Hi! This folder contains two Matlab scripts, and two functions, to analyze spectroscopic data via different classifiers. 

The first script, "useMLfunction_newData.m" uses the funciton in "runMLNew.m". This uses new training data to make a model, and new test data to test the accuracy of the models and identify sample type. You can specify the type of data and type of model to use, as well as the number of replicates and number of classes. There is a detailed header in the script with instructions to use it. You shouldn't need to make any changes to the function.

The second script, "useMLfunction_models.m", and funciton "runMLModels.m" use existing models to identify new plastic samples. The models are currently saved in the "models" folder.

For these scripts, the data you use needs to be in the correct format with the correct labels. In the "exampleTestFiles" folder there are example .csv files with this data in the correct format for reference. The data used in the models has been pre-processed as in Michel et al. 2020a and Michel et al. 2020b, so ensure that the same steps have been taken with new data. The "*_train_1.csv" files contain the complete data set (consumer and environmental plastics) from Michel et al. 2020b, which is what the models have been trained on. If the model script is giving errors, you can use the newData script with the "*train_1.csv" files as the training data for the same results. 

If there are any questions about these scripts feel free to contact me! Alexandra Morrison, aemorrison0@gmail.com





Michel, A.P.M., Morrison, A.E., Colson, B.C., Pardis, W.A., Moya, X.A., Harb, C.C., White, H.K., 2020a. Quantum cascade laser-based reflectance spectroscopy: a robust approach for the classification of plastic type. Optics Express 28, 17741–17756. https://doi.org/10.1364/OE.393231

Michel, A.P.M., Morrison, A.E., Preston, V., Marx, C.T., Colson, B.C., White, H.K., 2020a. Rapid Identification of Marine Plastic Debris via Spectroscopic Techniques and Machine Learning Classifiers. Accepted to Environmental Science & Technology