
# Statistical Analysis of Experimental Data Using R
# data-analysis-final-project
## Overview

This project performs a complete statistical analysis workflow in **R** using experimental data imported from an Excel file.
The analysis includes:

* Data preprocessing
* Descriptive statistics
* Data visualization
* Normality testing
* Correlation analysis
* ANOVA models
* Tukey post-hoc tests
* Linear regression modeling

The project demonstrates practical applications of statistical analysis in research and experimental studies.

---

# Technologies & Libraries

## Programming Language

* R

## Libraries Used

* `readxl`

---

# Dataset

The dataset is imported from an Excel file:

```r
readxl::read_xlsx()
```

The data contains the following variables:

| Variable    | Description                     |
| ----------- | ------------------------------- |
| `Y`         | Target/response variable        |
| `reps`      | Replication factor              |
| `salt`      | Salt treatment factor           |
| `salicylic` | Salicylic acid treatment factor |

---

# Project Workflow

## 1. Data Import & Preprocessing

* Read data from Excel
* Convert categorical variables into factors
* Encode factors numerically
* Inspect dataset structure

### Operations

```r
as.factor()
as.numeric()
str()
```

---

# 2. Descriptive Statistics

The script calculates several descriptive statistical measures for the target variable `Y`:

* Mean
* Median
* Mode
* Variance
* Standard Deviation
* Range

---

# 3. Data Visualization

The project generates graphical visualizations including:

## Histogram

Displays the distribution of the target variable.

## Density Plot

Shows the density distribution of `Y`.

## Bar Plot

Visualizes mean values of `Y` across replication classes.

---

# 4. Normality Testing

The project uses the **Shapiro-Wilk Test** to determine whether the target variable follows a normal distribution.

```r
shapiro.test()
```

---

# 5. Correlation Analysis

A **Spearman correlation matrix** is computed to evaluate relationships between variables.

```r
cor(method = "spearman")
```

---

# 6. ANOVA Analysis

Several ANOVA models are implemented:

## One-Way ANOVA

```r
aov(Y ~ reps_d)
```

## Two-Way ANOVA with Interaction

```r
aov(Y ~ reps_d + salt_d * salicylic_d)
```

## Multi-Factor ANOVA

```r
aov(Y ~ reps_d + salt_d + salicylic_d)
```

---

# 7. Post-Hoc Analysis

Tukey's Honest Significant Difference (HSD) test is applied after ANOVA to identify statistically significant group differences.

```r
TukeyHSD()
```

---

# 8. Linear Regression

A linear regression model is built to analyze the relationship between variables.

```r
lm(Y ~ reps + salt)
```

---

# Output

The project provides:

* Statistical summaries
* Hypothesis testing results
* Correlation analysis
* ANOVA tables
* Tukey post-hoc comparisons
* Regression model summaries
* Visual statistical plots

---

# How to Run

## 1. Install Required Package

```r
install.packages("readxl")
```

## 2. Load the Library

```r
library(readxl)
```

## 3. Update Dataset Path

Replace the Excel file path with your local dataset path:

```r
read_xlsx("your_file_path.xlsx")
```

## 4. Run the Script

Execute the R script in:

* RStudio
* VS Code with R Extension
* Jupyter Notebook with R Kernel

---

# Statistical Methods Used

* Descriptive Statistics
* Shapiro-Wilk Normality Test
* Spearman Correlation
* One-Way ANOVA
* Two-Way ANOVA
* Tukey HSD Test
* Linear Regression

---

# Applications

This project can be applied in:

* Agricultural experiments
* Biological studies
* Experimental research
* Data analysis education
* Statistical learning projects

---

# Author

Developed as a statistical data analysis project using R programming.
