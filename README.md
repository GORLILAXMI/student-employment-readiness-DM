# 🧠 Assessing Student Competencies: Analyzing Readiness for Employment

This project applies **Data Mining** and **Machine Learning** techniques to evaluate and classify student employment readiness based on academic and experiential attributes. It also includes a bioinformatics module to classify DNA sequences using Orange data mining tools.

## 📌 Project Overview

The aim of this project is to help educational institutions:
- Assess student readiness for employment
- Provide personalized career guidance
- Enhance training programs based on data-driven insights

## 🛠 Technologies Used

- **Languages & Tools:** Python (Orange), SQL Server, Visual Studio, SSAS
- **ML Models:** Random Forest, Decision Tree, Naive Bayes, SVM, KNN, Neural Networks
- **Data Mining Techniques:** Classification, OLAP (Star, Snowflake, Fact Constellation)
- **Visualization:** Orange Tool, Charts, Confusion Matrices

## 📂 Project Structure
```text
├── Part-A: Student Employment Readiness
│ ├── Data Collection (Google Forms)
│ ├── Preprocessing (Missing values, Normalization)
│ ├── OLAP Schema Design (Star, Snowflake, Fact Constellation)
│ ├── Classification Models
│ └── Evaluation Metrics (Accuracy, Precision, Recall, F1-score)
│
├── Part-B: DNA Sequence Classification
│ ├── Dataset: A2_promoters.tab
│ ├── Feature Selection via Dimensionality Reduction
│ ├── Model Comparison (Naive Bayes, SVM, etc.)
│ └── Final Prediction and Analysis
│
└── Part-C: Experimental Analysis
├── Performance Comparisons
├── Preprocessing Impact
└── Key Observations & Conclusions
```
## 🔍 Key Findings

- **Random Forest** provided the highest accuracy for student classification.
- Students without internships or project experience were mostly unemployed.
- **Naive Bayes** was most effective for DNA sequence classification after feature selection.

## 🚀 How to Run

> You’ll need:
> - Orange Tool (https://orangedatamining.com)
> - SQL Server Management Studio
> - Visual Studio with SSAS for OLAP operations

1. Import and clean the dataset using Orange or SQL.
2. Train models using Orange workflows or Python scripts.
3. Execute OLAP queries using SQL and MDX in Visual Studio.
4. Evaluate models with metrics and visualizations.
5. Review recommendations and trends via reports.

## 📊 Sample Visuals

- Confusion Matrix
- Bar plots (Career Path vs Gender)
- OLAP slice/dice drill-down operations

## 📃 Report

Full project report available in `/docs/DataMining&Warehouse.pdf`.

## 📫 Authors

- Gorli Laxmi
- Chappidi Jaswanth
- Akunuri Harshavalli
- Goriparthi Venkata Karthik  
_Seshadri Rao Gudlavalleru Engineering College_

## 🧾 License

This project is licensed for educational and research use.

---

> “Turning student data into meaningful insights for a better future.” 🌱
