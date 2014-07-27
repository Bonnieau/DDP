Predicting Iris Species based on Sepal and Petal measurement
========================================================
author: Bonnie
date: Sun Jul 27 22:03:06 2014

Application Summary
========================================================

This is a predictive web application.
It predicts iris species by Sepal and Petal measurement
Application functions include:
- Get iris Sepal and Petal measurement input by user
- predict Iris specie by user input data
- View the model tree plot

Web interface
========================================================

- It contains one sidebar and one main panel.
- The sidebar contains sliders and submit button
- The main panel contains 2 tabs
- Tab 1 : displays user inputs and predicted results
- Tab 2 : display the model tree plot

User Guide
========================================================

- Launch the application at 
  http://bonnieau.shinyapps.io/DS_DDP/
- Click the Tree plot tab to view the model tree
- Select the Sepal and Petal measurement by sliders
- Click submit button to predict outcome
- Click the Predict output to view the results

Prediction Model
========================================================

- The model is built with tree-based model: rpart
- classification tree is built for categorical outcome 
- The training data is r iris dataset

```
'data.frame':	150 obs. of  5 variables:
 $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
 $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
 $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
 $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
 $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
```





