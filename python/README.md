
```markdown
# 🐍 Python Analysis — COVID-19 India Vaccination Data

## 📌 Overview

The Python component of this project focuses on data loading, inspection, cleaning, exploratory data analysis, statistical analysis, visualization, calculated metrics, correlation analysis, outlier detection, and business insights.

Python is used to transform the raw COVID-19 vaccination dataset into a clean and analysis-ready dataset that can also be used in the SQL, Excel and Power BI components of the project.

---

## 🎯 Objectives

The Python analysis is designed to:

- Load the COVID-19 vaccination dataset.
- Inspect the structure and quality of the data.
- Identify missing values.
- Identify duplicate records.
- Clean and prepare the dataset.
- Generate descriptive statistics.
- Perform exploratory data analysis.
- Analyze vaccination by State/UT.
- Analyze vaccination across age groups.
- Calculate Coverage %, Booster % and Completion %.
- Study correlations between numerical variables.
- Detect potential outliers.
- Create meaningful visualizations.
- Export the cleaned dataset for further analysis.
- Generate an executive summary and business insights.

---

## 🛠️ Technology Stack

- **Python**
- **Jupyter Notebook**
- **Pandas**
- **NumPy**
- **Matplotlib**
- **Seaborn**

---

## 📊 Dataset

**Source:** Kaggle — COVID-19 India Statewise Vaccine Data

Dataset URL:

https://www.kaggle.com/datasets/anandhuh/covid19-india-statewise-vaccine-data

### Main Columns

| Column | Description |
|---|---|
| `state_uts` | State or Union Territory |
| `total_vaccination_doses` | Total vaccination doses |
| `dose1` | First dose |
| `dose2` | Second dose |
| `dose1_15_18` | First dose for age group 15–18 |
| `dose2_15_18` | Second dose for age group 15–18 |
| `dose1_12_14` | First dose for age group 12–14 |
| `dose2_12_14` | Second dose for age group 12–14 |
| `precaution_18_59` | Precaution/booster doses for age group 18–59 |
| `population` | Population of the State/UT |

---

# 🔄 Python Analysis Workflow

```text
Raw CSV
   ↓
Load Dataset
   ↓
Inspect Data
   ↓
Check Data Types
   ↓
Check Missing Values
   ↓
Check Duplicates
   ↓
Clean Data
   ↓
Descriptive Statistics
   ↓
Calculated Metrics
   ↓
Exploratory Data Analysis
   ↓
Correlation Analysis
   ↓
Outlier Detection
   ↓
Visualizations
   ↓
Business Insights
   ↓
Export Cleaned Dataset
