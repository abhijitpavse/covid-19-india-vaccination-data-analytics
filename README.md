# COVID-19 India Vaccination Data Analytics

> **End-to-End Data Analytics Project using MySQL, Python, MS Excel and Power BI**

![Python](https://img.shields.io/badge/Python-Pandas%20%7C%20NumPy-blue)
![SQL](https://img.shields.io/badge/SQL-MySQL-orange)
![Excel](https://img.shields.io/badge/Excel-Analytics-green)
![Power BI](https://img.shields.io/badge/Power%20BI-DAX-yellow)
![Status](https://img.shields.io/badge/Project-Completed-success)

---

## 📌 Project Overview

This project analyzes **COVID-19 vaccination data across Indian States and Union Territories** using four major analytics tools:

* MySQL
* Python
* Microsoft Excel
* Power BI

The project is designed as an end-to-end data analytics workflow covering:

```text
Raw Dataset
     ↓
Data Import
     ↓
Data Cleaning
     ↓
SQL Analysis
     ↓
Python EDA
     ↓
Excel Analysis
     ↓
Power BI Dashboard
     ↓
Business Insights
     ↓
Recommendations
```

The objective is to transform raw vaccination data into meaningful insights that can support public-health decision making.

---

# 🎯 Project Objectives

The project focuses on the following business objectives:

* Identify top-performing and low-performing States/UTs.
* Analyze vaccination coverage.
* Evaluate precaution/booster dose adoption.
* Compare vaccination across age groups.
* Analyze the relationship between population and vaccination.
* Build executive dashboards.
* Generate actionable recommendations.

---

# 📊 Dataset

### Dataset Source

**Kaggle — COVID-19 India Statewise Vaccine Data**

Dataset:

https://www.kaggle.com/datasets/anandhuh/covid19-india-statewise-vaccine-data

### Dataset Description

The dataset contains state/UT-level COVID-19 vaccination information, including vaccination doses, age-group vaccination and population information.

### Main Columns

| Column                    | Description                                  |
| ------------------------- | -------------------------------------------- |
| `state_uts`               | State or Union Territory                     |
| `total_vaccination_doses` | Total vaccination doses                      |
| `dose1`                   | First dose                                   |
| `dose2`                   | Second dose                                  |
| `dose1_15_18`             | First dose for age group 15–18               |
| `dose2_15_18`             | Second dose for age group 15–18              |
| `dose1_12_14`             | First dose for age group 12–14               |
| `dose2_12_14`             | Second dose for age group 12–14              |
| `precaution_18_59`        | Precaution/booster doses for age group 18–59 |
| `population`              | State/UT population                          |

---

# 🛠️ Technology Stack

| Tool            | Purpose                                                  |
| --------------- | -------------------------------------------------------- |
| MySQL           | Database creation, data import and SQL business analysis |
| Python          | Data cleaning, EDA, statistics and visualization         |
| Pandas          | Data manipulation                                        |
| NumPy           | Numerical analysis                                       |
| Matplotlib      | Data visualization                                       |
| Seaborn         | Statistical visualization                                |
| Microsoft Excel | Pivot tables, dashboard and interactive analysis         |
| Power BI        | Interactive dashboard and DAX analysis                   |
| DAX             | Power BI measures and calculated analytics               |

---

# 🗂️ Project Structure

```text
covid-19-india-vaccination-data-analytics/
│
├── README.md
│
├── data/
│   ├── raw/
│   │   └── COVID-19_dataset.csv
│   │
│   └── cleaned/
│       └── cleaned_covid_vaccination.csv
│
├── mysql/
│   └── covid_vaccination_analysis.sql
│
├── python/
│   └── covid_vaccination_analysis.ipynb
│
├── excel/
│   └── COVID-19_Vaccination_Analysis.xlsx
│
├── powerbi/
│   └── COVID-19_Vaccination_Dashboard.pbix
│
├── presentation/
│   └── COVID-19_Vaccination_Presentation.pptx
│
├── screenshots/
│   ├── executive-summary.png
│   ├── state-analysis.png
│   ├── age-group-analysis.png
│   └── insights.png
│
└── docs/
    └── project-documentation.md
```

---

# 🗄️ Part 1 — MySQL

## Objective

Create a MySQL database, import the vaccination dataset and answer business questions using SQL.

## Database

```sql
CREATE DATABASE covid_vaccination;

USE covid_vaccination;
```

## Table

```sql
CREATE TABLE covid_data (
    state_uts VARCHAR(100),
    total_vaccination_doses BIGINT,
    dose1 BIGINT,
    dose2 BIGINT,
    dose1_15_18 BIGINT,
    dose2_15_18 BIGINT,
    dose1_12_14 BIGINT,
    dose2_12_14 BIGINT,
    precaution_18_59 BIGINT,
    population BIGINT
);
```

## Data Import

```sql
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/COVID-19_dataset.csv'
INTO TABLE covid_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
```

## SQL Business Questions

The SQL analysis answers:

1. What are the Top 10 vaccinated States/UTs?
2. Which States/UTs have population greater than 50 million but below average vaccination coverage?
3. Which States/UTs have Dose 2 below 80% of Dose 1?
4. What are the Top 5 States/UTs by precaution doses?
5. What is the vaccination coverage percentage?
6. How can States/UTs be ranked according to vaccination?
7. Which State/UT has the highest child vaccination?
8. Which State/UT has the highest teen vaccination?
9. Which States/UTs have more than 100 million precaution doses?
10. What is the final summary report containing coverage and rank?

## Important SQL Concepts

```text
CREATE DATABASE
CREATE TABLE
LOAD DATA INFILE
SELECT
WHERE
ORDER BY
LIMIT
COUNT()
AVG()
ROUND()
DENSE_RANK()
Window Functions
Subqueries
```

---

# 🐍 Part 2 — Python

## Objective

Use Pandas and Python to load, inspect, clean and analyze the dataset.

## Python Workflow

```text
Load Dataset
     ↓
Inspect Dataset
     ↓
Check Missing Values
     ↓
Check Duplicates
     ↓
Clean Data
     ↓
Descriptive Statistics
     ↓
EDA
     ↓
Correlation Analysis
     ↓
Outlier Detection
     ↓
Calculated Columns
     ↓
Visualization
     ↓
Business Insights
```

## Python Analysis

The notebook covers:

### Data Inspection

* Dataset shape
* Column names
* Data types
* Missing values
* Duplicate records
* Descriptive statistics

### Exploratory Data Analysis

* State-wise vaccination analysis
* Population analysis
* Dose 1 vs Dose 2
* Age-group vaccination
* Precaution dose analysis
* Correlation analysis

### Calculated Columns

The analysis includes:

```text
Coverage %
Booster %
Completion %
```

### Required Visualizations

#### 1. Top 10 States

Bar chart showing the highest vaccinated States/UTs.

#### 2. Pie Chart

Distribution of vaccination-related categories.

#### 3. Histogram

Distribution of vaccination/population values.

#### 4. Scatter Plot

Relationship between population and vaccination.

#### 5. Heatmap

Correlation between numerical vaccination variables.

### Outlier Detection

Identify unusually high or low values using statistical techniques such as the IQR method.

---

# 📗 Part 3 — Microsoft Excel

## Workbook Structure

The Excel workbook contains four major sheets:

```text
Raw Data
     ↓
Clean Data
     ↓
Pivot Tables
     ↓
Dashboard
```

## Raw Data

Contains the original imported dataset.

## Clean Data

Contains cleaned and analysis-ready data.

## Pivot Tables

Pivot tables are used to analyze:

* State-wise vaccination
* Dose 1
* Dose 2
* Precaution doses
* Age-group vaccination
* Population
* Coverage

## Excel Dashboard

The dashboard includes:

* KPI Cards
* Bar Chart
* Pie Chart
* Line Chart
* Column Chart
* Map (optional)
* Slicers

---

# 📊 Part 4 — Power BI

## Objective

Build an interactive vaccination analytics dashboard using DAX measures and multiple analytical pages.

## Dashboard Pages

### 1. Executive Summary

Provides a high-level overview using:

* Total Vaccination
* Total Population
* Coverage %
* Booster %
* Total Booster
* Total States
* Overall vaccination visuals

---

### 2. State Analysis

Provides State/UT-level analysis using:

* Top 10 vaccinated States
* State-wise coverage
* Dose 1 vs Dose 2
* State ranking
* Population vs vaccination
* Interactive State slicer

---

### 3. Age Group Analysis

Analyzes vaccination among:

* 12–14 age group
* 15–18 age group

Visuals include:

* Child vaccination
* Teen vaccination
* Top States for child vaccination
* Top States for teen vaccination
* Age-group comparison

---

### 4. Insights

Highlights:

* Highest coverage States
* Lowest coverage States
* Top precaution-dose States
* States with Dose 2 below 80% of Dose 1
* Population vs vaccination relationship
* Business recommendations

---

# 🧮 DAX Measures

## Total Vaccination

```DAX
Total Vaccination =
SUM(covid_data[total_vaccination_doses])
```

## Total Population

```DAX
Total Population =
SUM(covid_data[population])
```

## Total Dose 1

```DAX
Total Dose1 =
SUM(covid_data[dose1])
```

## Total Dose 2

```DAX
Total Dose2 =
SUM(covid_data[dose2])
```

## Total Booster

```DAX
Total Booster =
SUM(covid_data[precaution_18_59])
```

## Coverage %

```DAX
Coverage % =
DIVIDE(
    [Total Vaccination],
    [Total Population],
    0
) * 100
```

## Booster %

```DAX
Booster % =
DIVIDE(
    [Total Booster],
    [Total Vaccination],
    0
) * 100
```

## Child Vaccination

```DAX
Child Vaccination =
SUM(covid_data[dose1_12_14])
+
SUM(covid_data[dose2_12_14])
```

## Teen Vaccination

```DAX
Teen Vaccination =
SUM(covid_data[dose1_15_18])
+
SUM(covid_data[dose2_15_18])
```

## Total States

```DAX
Total States =
DISTINCTCOUNT(covid_data[state_uts])
```

## Dose 2 Percentage

```DAX
Dose2 Percentage =
DIVIDE(
    [Total Dose2],
    [Total Dose1],
    0
) * 100
```

---

# 📈 Key Business Questions

The complete project focuses on answering:

### State Performance

* Which States/UTs have the highest vaccination?
* Which States/UTs have the lowest vaccination?
* Which States/UTs have the highest coverage?
* Which States/UTs have the lowest coverage?

### Population Analysis

* How does population relate to vaccination?
* Are highly populated States necessarily the best performers?
* Which highly populated States are below average coverage?

### Dose Analysis

* How does Dose 2 compare with Dose 1?
* Which States have Dose 2 below 80% of Dose 1?
* Which States have strong completion levels?

### Booster Analysis

* Which States have the highest precaution-dose adoption?
* Which States have low booster adoption?
* Which States have more than 100 million precaution doses?

### Age Group Analysis

* Which State has the highest 12–14 vaccination?
* Which State has the highest 15–18 vaccination?
* How does child vaccination compare with teen vaccination?

---

# 🔎 Key Analytical Concepts

The project demonstrates:

```text
Data Collection
       ↓
Data Cleaning
       ↓
Data Transformation
       ↓
Exploratory Data Analysis
       ↓
Statistical Analysis
       ↓
SQL Business Queries
       ↓
Visualization
       ↓
Dashboard Development
       ↓
Business Insights
       ↓
Recommendations
```

---

# 💡 Business Insights

The final analysis should focus on identifying:

### High Performers

States with strong total vaccination and/or coverage.

### Low Performers

States with comparatively low vaccination coverage.

### Coverage Gaps

Highly populated States that perform below the average coverage.

### Dose Completion Gaps

States where Dose 2 is below 80% of Dose 1.

### Booster Adoption

States with strong precaution-dose adoption.

### Age-Group Performance

States leading in 12–14 and 15–18 vaccination.

---

# 🎯 Recommendations

Based on the analysis, recommendations can focus on:

1. Prioritize vaccination campaigns in low-coverage States.
2. Focus on improving Dose 2 completion where the Dose 2/Dose 1 ratio is below 80%.
3. Strengthen precaution-dose awareness in States with lower booster adoption.
4. Continue targeted vaccination programs for younger age groups.
5. Use population-adjusted metrics rather than relying only on absolute vaccination counts.
6. Use interactive dashboards for continuous monitoring and decision-making.

---

# 📊 Dashboard Preview

Add your Power BI screenshots here after completing the dashboard.

### Executive Summary

```text
screenshots/executive-summary.png
```

### State Analysis

```text
screenshots/state-analysis.png
```

### Age Group Analysis

```text
screenshots/age-group-analysis.png
```

### Insights

```text
screenshots/insights.png
```

---

# 📁 Project Deliverables

| Deliverable        | File                                                  |
| ------------------ | ----------------------------------------------------- |
| SQL Analysis       | `mysql/covid_vaccination_analysis.sql`                |
| Python Analysis    | `python/covid_vaccination_analysis.ipynb`             |
| Excel Workbook     | `excel/COVID-19_Vaccination_Analysis.xlsx`            |
| Power BI Dashboard | `powerbi/COVID-19_Vaccination_Dashboard.pbix`         |
| Presentation       | `presentation/COVID-19_Vaccination_Presentation.pptx` |
| Dataset            | `data/raw/COVID-19_dataset.csv`                       |

---

# 🧠 Skills Demonstrated

### SQL

* Database creation
* Table design
* Data import
* Filtering
* Sorting
* Aggregation
* Subqueries
* Window functions
* Ranking
* Business analysis

### Python

* Pandas
* NumPy
* Data cleaning
* EDA
* Statistics
* Correlation
* Outlier detection
* Data visualization

### Excel

* Data cleaning
* Pivot Tables
* KPI Cards
* Charts
* Slicers
* Dashboard creation

### Power BI

* Data modeling
* DAX
* Measures
* KPI cards
* Interactive visualizations
* Slicers
* Dashboard design
* Business storytelling

---

# 🚀 How to Use This Repository

## 1. Clone the Repository

```bash
git clone https://github.com/YOUR-USERNAME/covid-19-india-vaccination-data-analytics.git
```

## 2. Open the SQL Analysis

```text
mysql/
└── covid_vaccination_analysis.sql
```

Run the script in MySQL Workbench.

## 3. Open the Python Notebook

```text
python/
└── covid_vaccination_analysis.ipynb
```

Run it using Jupyter Notebook or VS Code.

## 4. Open the Excel Workbook

```text
excel/
└── COVID-19_Vaccination_Analysis.xlsx
```

## 5. Open the Power BI Report

```text
powerbi/
└── COVID-19_Vaccination_Dashboard.pbix
```

Open it using Power BI Desktop.

---

# 📌 Important Note About Coverage

The dataset contains vaccination **doses**, not simply unique vaccinated individuals.

Therefore, a dose-based calculation such as:

```text
Total Vaccination Doses
----------------------- × 100
Population
```

can exceed 100%.

For example, values above 100% indicate that multiple doses have been administered per person; they should not be interpreted as saying that more than 100% of the population consists of vaccinated individuals.

---

# 🏆 Project Outcome

This project demonstrates an end-to-end analytics workflow that transforms COVID-19 vaccination data into:

```text
Raw Data
   ↓
Clean Data
   ↓
SQL Analysis
   ↓
Python EDA
   ↓
Excel Dashboard
   ↓
Power BI Dashboard
   ↓
Business Insights
   ↓
Recommendations
```

The final outcome is a multi-tool analytics solution designed to support comparison of State/UT performance, vaccination coverage, precaution-dose adoption and age-group vaccination.

---

# 📚 Dataset Source

Kaggle:

https://www.kaggle.com/datasets/anandhuh/covid19-india-statewise-vaccine-data

---

# 👤 Author

**Abhijit Pavse**

Data Analytics | Python | SQL | Power BI | Excel

---

## ⭐ If you find this project useful

Feel free to ⭐ star the repository and explore the analysis.
