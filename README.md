# 🏦 Loan Approval Analysis

## Executive Summary
An end-to-end data analysis project identifying credit risk patterns, loan approval drivers, Exploring reasons for borrowing funds, Application approval criteria, financial resource distribution and default rates using Excel, SQL, and Power BI to optimize lending strategies.

---

## 🛠️ Tools Used
* *Excel:* Primary data cleaning, exploratory data auditing, and baseline reporting.
* *SQL:* Data extraction, querying, aggregation, dynamic CTEs, and risk segmentation.
* *Power BI:* Interactive dashboard design, star-schema data modeling, and dynamic DAX metrics.

---

## 📊 Dashboard Overview
![Overview Dashboard](Overview%20Dashboad.png)
![Detail Dashboard](Detail%20Dashboad.png)

---
## 🔍 Key Business Insights

* *Capital Allocation & Funding Deficit:* Out of *$39.83M* in total requested loan volume across 20,000 applicants, only *$27.39M* was funded, leaving a *$12.44M (31.2%) funding gap*.
* *Loan Approval Ratio:* *64.28%* of applicants were classified as Good/Approved, while *35.72%* were Rejected due to credit risk and underwriting criteria.
* *Geographic Concentration:* *Metro City* drives the largest market share with 9.0K applicants and *$15M* in approved capital, outperforming Urban ($7M), Semi-Urban ($4M), and Rural ($2M) regions combined.
* *Loan Purpose Dynamics:* *Home loans* represent the dominant capital demand at *$26M* (with the highest average loan size of ~$3.76K), followed by Business loans ($6M), Personal loans ($3M), and Vehicle loans ($2M).
* *Employment Stability:* *Private sector employees* form the core applicant base (9.8K total, 6.6K approved), while unemployed applicants faced a near 100% rejection rate (0.8K rejected out of 0.8K).
* *Loan Tenure Distribution:* Medium-to-long term loans dominate capital allocation, led by *20-year tenures (22.59%)* and *35-year tenures (35.7%), while maintaining an overall portfolio average interest rate of **12.70%* and DTI of *24.92%*.

---

## 📂 Repository Structure
* Synthetic_Loan_Approval.csv - Cleaned dataset used for analysis.
* SQL Loan_Approval project.sql - SQL queries for analytical segmentation and business logic.
* Overview Dashboad.png & Detail Dashboad.png - Visual outputs from Power BI reporting.
