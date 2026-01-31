
# 🌍 Artificial Intelligence Models for Climate Change

This course addresses practical aspects of applying Artificial Intelligence to one of the most critical topics of the moment: global warming. It bridges the gap between theoretical AI concepts and sustainable engineering, focusing on identifying solvable climate problems, modeling them mathematically, and proposing viable software solutions.

### 📅 Weekly Syllabus

The curriculum is structured around specific "AI for Earth" pillars, moving from biodiversity to smart cities.

| Week | 👨‍🏫 Lecture Content | 🎯 Focus Area |
|:---:|:---|:---|
| **1** | **Introduction:** Climate Change as a challenge for Machine Learning (ML) and Deep Learning (DL). | **Foundations** |
| **2** | **Sustainability:** Computational Sustainability – AI for a better world and sustainable future. | **Ethics & Impact** |
| **3** | **AI for Earth I:** Wildfire detection and prevention using DL and ML techniques. | **Disaster Response** |
| **4** | **AI for Earth II:** Detection and prevention of deforestation using DL/ML. | **Forestry** |
| **5** | **AI for Environment I:** Using technology to save Biodiversity. Current status and future trends. | **Biodiversity** |
| **6** | **AI for Environment II:** Monitoring, measuring, and limiting environmental pollutants. | **Pollution Control** |
| **7** | **AI for Agriculture I:** Improving agricultural yield using Machine Learning. | **Smart Farming** |
| **8** | **AI for Agriculture II:** Optimizing the food supply chain and logistics using ML. | **Logistics** |
| **9** | **AI for Society I:** Traffic optimization and the creation of Green Smart Cities. | **Urban Planning** |
| **10** | **AI for Society II:** Improving energy consumption and optimizing renewable energy usage. | **Energy** |
| **11** | **Future Outlook:** The risks and benefits of AI regarding global climate change. | **Conclusion** |

---

### 🌿 Team Project: Plant Disease Detection

As part of the practical assessment, the team developed a solution addressing modern agricultural challenges.

#### 💡 The Problem
Modern agriculture faces a "perfect storm" of challenges: climate change, rapid population growth, and the urgent need for food security.
*   **Challenge:** Plant diseases severely affect crop yields.
*   **Current Limitations:** Traditional detection relies on manual inspection by experts, which is slow, expensive, prone to error, and limited by a shortage of specialists.
*   **Consequence:** Late detection leads to massive economic losses and excessive use of chemical treatments.

#### 🚀 The Solution
The team developed a **Deep Learning system for early disease detection** that outperforms the human eye in identifying subtle symptoms.
*   **Scalability:** Analyzes thousands of images rapidly.
*   **Accessibility:** Designed for integration into mobile apps for field use.
*   **Impact:** Enables targeted treatment (reducing pesticide use) and prevents disease spread through early warnings.

#### 🛠️ Technical Implementation

**Algorithms & Architecture:**
*   **Baseline Model:** A standard CNN (Convolutional Neural Network) using simple layers (`Conv2D`, `MaxPooling`, `Dense`).
*   **Optimized Model:** A highly efficient architecture inspired by Xception/MobileNet concepts:
    *   **SeparableConv2D:** Reduces computational cost significantly.
    *   **Skip Connections (Residuals):** Improves gradient flow (similar to ResNet).
    *   **BatchNormalization:** Accelerates training stability.
    *   **GlobalAveragePooling2D:** Reduces overfitting compared to flattening.
*   **Efficiency:** The optimized model reduced the parameter count from **1,967,496** (Baseline) to just **26,124**, making it viable for mobile deployment.

**Training Pipeline:**
*   **Preprocessing:** Resizing to 128x128px, Normalization [0,1].
*   **Split:** 80% Training / 20% Testing.
*   **Configuration:** Adam Optimizer, Categorical Crossentropy loss.
*   **Regularization:** Dropout (0.5) to prevent overfitting.

**Evaluation Metrics:**
*   Accuracy, Precision, Recall, F1-Score.
*   Confusion Matrix (used to analyze specific misclassifications between similar disease patterns).

---

### 🧠 Course Objectives

By the end of this module, students acquire the skills to:
1.  **Identify** current, solvable problems related to Climate Change.
2.  **Model** these problems using data science methodologies.
3.  **Propose** and implement viable AI-driven applications to mitigate environmental issues.

