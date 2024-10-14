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
