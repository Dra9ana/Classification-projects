## Exercise 1: Advanced Gesture Recognition System for Rock, Paper, Scissors

### Exercise Overview:
Designed an innovative gesture recognition system utilizing hypothesis testing techniques to accurately classify hand signs for the "rock, paper, scissors" game.

### Key Achievements:

- **Robust Image Processing Algorithm:**  
  Developed a comprehensive image processing algorithm capable of handling variations in lighting conditions, hand positions, and gesture representation. This involved converting RGB images to the HSV color space to enhance the segmentation of hand regions and applying morphological operations to eliminate noise.

- **Feature Extraction and Selection:**  
  Identified and extracted critical features, such as edge pixel count and hand width, which effectively distinguish between the gestures. Implemented techniques to normalize feature sizes, ensuring consistent classification regardless of individual hand size.Presented feature histograms to analyze separability between gestures, providing insights into feature effectiveness. Visualized cl

- **Training and Testing Framework:**  
  Split the dataset into training and test sets, ensuring balanced representation across classes. Trained classifiers on the training set and evaluated performance using confusion matrices to visualize classification results.

- **Implementation of Bayesian Classifier:**  
  Employed a Bayesian classifier based on minimum error probability to classify gestures. Successfully calculated posterior probabilities, resulting in a predictive model with an accuracy of **84.33%** on the test set. The model highlighted strengths and weaknesses, particularly in distinguishing between "paper" and "rock" gestures.
-  **Confusion Matrix Results**

|            | Predicted Rock | Predicted Paper | Predicted Scissors |
|------------|----------------|------------------|---------------------|
| **Actual Rock**      | 138  | 48    | 14      |
| **Actual Paper**     | 12 | 179| 9  |
| **Actual Scissors**  |10| 1| 189 |
- **Optimal linear classifier**
   Selected the two most effective features that provided the highest separability between gestures, which were then classified using a optimal linear classifier.

# Exercise 2: Bimodal Class Classification

## Overview
This exercise focuses on generating samples from two bimodal classes and implementing various classification techniques to analyze their performance. The primary goal is to evaluate different classifiers, including a Bayesian classifier, cost-sensitive classifier, Neyman-Pearson classifier, and Wald sequential test, in terms of classification error rates and theoretical performance.

## Problem Description
The objective of this exercise is to generate 500 samples from two bimodal classes, represented as follows:

- **Class \(\Omega_1\)**:
  - Distribution 11: \(N(M_{11}, S_{11})\) where:
    - \(M_{11} = [0, 0]^T\)
    - \(S_{11} = \begin{bmatrix} 1 & 0.5 \\ 0.5 & 1 \end{bmatrix}\)
  - Distribution 12: \(N(M_{12}, S_{12})\) where:
    - \(M_{12} = [0, 8]^T\)
    - \(S_{12} = \begin{bmatrix} 1 & -0.2 \\ -0.2 & 1 \end{bmatrix}\)

- **Class \(\Omega_2\)**:
  - Distribution 21: \(N(M_{21}, S_{21})\) where:
    - \(M_{21} = [5, 0]^T\)
    - \(S_{21} = \begin{bmatrix} 1.5 & -0.7 \\ -0.7 & 1.5 \end{bmatrix}\)
  - Distribution 22: \(N(M_{22}, S_{22})\) where:
    - \(M_{22} = [5, 6]^T\)
    - \(S_{22} = \begin{bmatrix} 1 & 0.6 \\ 0.6 & 1 \end{bmatrix}\)

## Goals and Achievements
1. **Data Generation**:
   - Generated 500 samples for each bimodal class.
   - Visualized the generated samples using a scatter plot.

2. **Probability Density Functions (PDFs)**:
   - Derived theoretical PDF functions for both classes.
   - Compared theoretical PDFs with histograms of the generated samples to assess their similarity.

3. **Bayesian Classifier**:
   - Designed and implemented a Bayesian classifier that minimizes classification error.
   - Visualized the classification decision boundary on a plot along with the generated data points.
   - Analyzed classification error rates, comparing theoretical and empirical results using a confusion matrix.

4. **Cost-Sensitive Classifier**:
   - Developed a cost-sensitive classifier to penalize misclassification of Class 1 more heavily than Class 2.
   - Illustrated the impact of cost on the classification boundary and the resulting error rates.

5. **Neyman-Pearson Classifier**:
   - Created a Neyman-Pearson classifier, ensuring a reasonable balance between the two types of classification errors.
   - Evaluated the impact of setting a constant error rate on the overall classification performance.

6. **Wald Sequential Test**:
   - Implemented Wald's sequential test to determine the required number of samples based on specified error probabilities.
   - Analyzed the relationship between error rates and the number of samples needed for accurate classification for both classes.

## Conclusion
The exercise successfully demonstrates the application of various classification techniques on bimodal distributions, providing insights into their performance and error rates. The analysis and visualizations allow for a deeper understanding of the effects of different classification approaches on the overall accuracy and reliability of predictions.

# Exercise 3: Classifier Design for Separable Classes

## exercise Overview

In this exercise, the objective was to design and implement classifiers for two-dimensional data. Specifically, the exercise focused on:

1. **Generating Two-Dimensional Shape Classes**: 
   - Creating three classes of data points that are linearly separable.
   - Generating two classes of data points that are not linearly separable, utilizing Gaussian distributions.

2. **Classifier Design**:
   - Developing a linear classifier for the linearly separable classes.
   - Implementing a quadratic classifier for the non-linearly separable classes.

3. **Evaluation of Classifiers**:
   - Assessing the performance of both classifiers through confusion matrices.
   - Analyzing the impact of various elements in the desired output matrix on classifier performance.

## Achievements
  
- Designed a linear classifier utilizing an iterative procedure that accurately separated the linearly separable data, leading to a high classification accuracy.

- Implemented a quadratic classifier to address the challenges presented by the non-linearly separable classes, achieving improved accuracy over the linear classifier for this dataset.

- Conducted a thorough evaluation of both classifiers, presenting results through confusion matrices that provided insights into the classification performance and error rates.
# Exercise 4: Non-linear Data Clustering

## Overview

This exercise investigates the challenges and methodologies for clustering non-linearly separable data. The primary aim was to explore and implement various clustering techniques, including C-means clustering, Normal Decomposition, and Maximum Likelihood Estimation (MLE), to assess their effectiveness in grouping complex datasets.

### Objectives

- **Data Generation**: Create synthetic datasets that reflect non-linear separability, simulating realistic clustering challenges.
- **Clustering Techniques**: 
  - Implement C-means clustering to evaluate its performance on non-linear data.
  - Utilize Normal Decomposition to cluster data based on Gaussian distributions and iteratively refine the clustering process.
  - Apply Maximum Likelihood Estimation to enhance clustering accuracy and evaluate the model's adaptability to varying data distributions.

### Achievements
- Demonstrated the performance of C-means clustering and its limitations when dealing with complex data structures.
- Explored the Normal Decomposition method, assessing its efficiency in clustering through various initializations and configurations.
- Conducted an extensive analysis of clustering outcomes based on the number of clusters and initialization strategies, providing insights into the impact of these factors on clustering performance.
- Documented the average number of iterations required for convergence across different clustering algorithms, revealing the relationship between the complexity of the data and the clustering technique's effectiveness.

### Conclusion

This exercise provided valuable insights into clustering methodologies for non-linear data. It highlighted the importance of choosing appropriate algorithms and initialization techniques to improve clustering outcomes. The findings contribute to a deeper understanding of data clustering challenges and set the groundwork for future work in advanced clustering techniques.
