# 🗄️ SQL Analysis — COVID-19 India Vaccination Data

## 📌 Overview

The SQL component of this project focuses on building a relational database, importing the COVID-19 vaccination dataset, performing data validation, and answering business questions using MySQL.

The analysis uses State/UT-level vaccination data to understand vaccination performance, coverage, dose completion, precaution-dose adoption, age-group vaccination, and State/UT rankings.

---

## 🎯 Objectives

The SQL analysis is designed to:

- Create a MySQL database for COVID-19 vaccination data.
- Create a structured table with appropriate data types.
- Import the CSV dataset into MySQL.
- Validate the imported data.
- Identify the Top 10 vaccinated States/UTs.
- Find highly populated States/UTs with below-average vaccination coverage.
- Identify States/UTs where Dose 2 is below 80% of Dose 1.
- Identify the Top 5 States/UTs by precaution doses.
- Calculate vaccination coverage percentage.
- Rank States/UTs by total vaccination.
- Identify the highest child vaccination.
- Identify the highest teen vaccination.
- Find States/UTs with more than 100 million precaution doses.
- Generate a final summary report containing coverage and rank.

---

## 🛠️ Technology

- **Database:** MySQL
- **Tool:** MySQL Workbench
- **Language:** SQL
- **Input:** CSV dataset

---

## 📊 Dataset

**Source:** Kaggle — COVID-19 India Statewise Vaccine Data

Dataset URL:

https://www.kaggle.com/datasets/anandhuh/covid19-india-statewise-vaccine-data

### Dataset Columns

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

# 🏗️ Database Setup

## 1. Create Database

```sql
CREATE DATABASE covid_vaccination;

USE covid_vaccination;
