# Understanding the relationship between gender and income. A data-driven analysis. 

## Context
This repository was a deliverable of a group project done during the Ironhack bootcamp on April 2026. As collaborator to the code and data analysis is Irish Levi Bawingan, also part of the same cohort. 

## Introduction

This project explores income inequality using the Adult Income dataset, with a focus on gender disparities.

While factors like education and occupation are known drivers of income, this analysis investigates whether gender also plays a significant role. Using demographic and socioeconomic features, the project aims to identify patterns and differences in income distribution between men and women.

The goal is to provide a data-driven perspective on gender inequality in income.


## Key Questions

1. Are there noticeable income disparities across demographic groups such as gender?
2. How do societal roles (household relationship) interact with gender to influence income?
3. What are the primary structural barriers to higher income, and how do they interact?

## Methodology

### Data Source
The data was collected by the [US Census Bureau](https://www.census.gov/en.html) in 1996. Records supporting the historical context can be found in the [Current Population Survey](https://www.census.gov/topics/income-poverty/income/data/tables/cps.html?text-list-4839d54a73%3Atab=1996#text-list-4839d54a73) repository. 
The dataset can be extracted from the [UC Irvine Machine Learning Repository](https://archive.ics.uci.edu/dataset/20/census+income) or from the [Kaggle hub source](https://www.kaggle.com/datasets/wenruliu/adult-income-dataset) that distributed the data that was used in this work. 
Additional description can be found in the following [Link](
http://www.cs.toronto.edu/~delve/data/adult/adultDetail.html)

### Data structure 

Shape of the data structure: 15 columns with 48842 entries. 

#### Data Dictionary

| Column Name        | Description |
|------------------|------------|
| age              | Age of the individual |
| workclass        | Type of employment (e.g., Private, Government) |
| fnlwgt           | Final weight (census weighting factor) |
| education        | Highest level of education achieved |
| education_num    | Numerical representation of education level |
| marital_status   | Marital status of the individual |
| occupation       | Job role or occupation |
| relationship     | Relationship status within household |
| race             | Ethnic background |
| gender           | Gender of the individual |
| capital_gain     | Income from investment gains |
| capital_loss     | Losses from investments |
| hours_per_week   | Number of hours worked per week |
| native_country   | Country of origin |
| income           | Target variable indicating income level (<=50K or >50K) |

### Tools

Data analysis was done by using common python libraries like pandas, matplot, numpy, scipy. The visualization of the data was done with seaborn library. 
Additional statistical analysis was done using SQL. 

### Data Cleaning
    1. Handling missing values
    2. Handling uncertain categories
    3. Replacing wrong category assignments for NaN
### Data Reduction 
    1. Elimination of columns out of the scope of the analysis: workclass,fnlwgt,capital gain,capital loss and native_country.  

### Exploratory Data Analysis: (EDA)
    1. Univariate analysis: Used to understand the distribution of the main categories across the sample. 
        Statistical analysis: 
        Chi-square and Cramer's v test to understand to correlation of individual variables to the income. 
    2. Bivariate analysis: Relation of each variable against the income. This allowed to gain insights to where was the highest disparities observed or patterns across categories. 
        Statistical Analysis: Not performed. 
## Results 
Observations of the analysis pointed towards a biased population, where 64% of the surveyed subjects were male.

Key Findings: 
- Income inequality is observed across the overall population with only 25 % of the population showing income above 50K. 
- Gender disparity is evident in high income earners, where women represent only the 19.4 % of the sample with high income. 
- Education showed similar distribution across genders, showing equal access of opportunities. 
- Disparities are evident across occupation types. The occupations with higher income earners, like executive managerial and tech support, are fields with a high percentage of male over female subjects.
- The prevalence of married couples in both high and low income is a reflection of the most common societal norms. However, at higher levels, there is a shift between women and men where women show higher distributions for divorce and single status. 

## Structure of this repository

The dataset can be found in the links given in the methodology. The repository contains the jupyter notebook with steps from data cleaning and visualization as well as key insights for each analysis. There are two additional csv files (male_conclusions.csv and female_conclusions.csv) which where manually modified after an output generated in the same notebook. This was done to manually combine some of the marital and relationship categories that were equivalent. Additional aspects about the dataset where interrogated through the adult_income.sq. 





