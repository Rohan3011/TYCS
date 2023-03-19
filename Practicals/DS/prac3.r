# The iris dataset is a built-in dataset in R that contains measurements on 4 different attributes (in centimeters) for 50 flowers from 3 different species.

# Taking the numeric part of the IRIS data 
data_iris <- iris[1:4]

# Calculating the covariance matrix
cov_data <- cov(data_iris)

# Find out the eigen-vectors and eigenvalues using the covariance matrix
Eigen_data <- eigen(cov_data)

# Using the inbuilt function 
 PCA_data <- princomp(data_iris ,cor="False")

# Let’s now compare the output variances
Eigen_data$values

PCA_data$sdev^2


PCA_data$loadings[,1:4]

Eigen_data$vectors 

summary(PCA_data)

biplot (PCA_data) 

screeplot(PCA_data, type="lines")