# BDA-Project-2022

This is the final project for the course CS-E5710 Bayesian Data Analysis at Aalto University. The project was a collaboration between Nghi Vo and Khanh Ha (@https://github.com/HmKayy).

## Aim
In this project, we aim to analyse the possible correlation between depression and motor activity using Bayesian methods. The data set used is "The Depresjon Dataset", available on "https://datasets.simula.no/depresjon/#dataset-details". 

We developed Bayesian models to predict depression based on the proportion of zero motor activity measurements in a specific time of the day. Furthermore, we compared the pooled and hierachical models to test the possibility that such correlation differs between males and females.

## Result
Our models were able to predict depression with approximately 70% accuracy on test set. Despite certain limitations (small number of test subjects, variation in summarizing data for each subject), the results reflect the potential of researching further into the correlation between depression and motor activity.

However, our previous speculation that such correlation differs between males and females is neither confirmed or discarded, as the performances of both the pooled and hierarchical models are close to each other. In future research, it is promising to also investigate if the correlation between different groups would differ from one another via developing similar hierarchical models with groups by gender, age, or level of education.

## Details
Further details about the model designs and results, as well as limitations and possible future improvements can be found in the project document (report.pdf/report.Rmd/report.html files in the repository). The project primarily uses the language R for data processing, analysing and developing models, with the code also attached in the report using R Markdown; and Stan for the models.
