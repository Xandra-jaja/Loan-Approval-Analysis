-- Applicant counts by category

SELECT Employment_Type, COUNT(*) AS Applicant_count
FROM loan_approval
GROUP BY Employment_Type
ORDER BY Applicant_count DESC;


-- Overall approval rate

SELECT 
    Loan_status, 
    COUNT(*) AS total_funded,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 1) AS pct
FROM loan_approval
GROUP BY Loan_status;



-- Compare Approval Outcomes Across Customer Groups		


SELECT 
    City_Tier_Label,
    COUNT(*) AS total_Applications,
    SUM(CASE WHEN Loan_status = 'Approved' THEN 1 ELSE 0 END) AS Approved,
    ROUND(100.0 * SUM(CASE WHEN Loan_status = 'Approved' THEN 1 ELSE 0 END) / COUNT(*), 1) AS Approval_rate_pct
FROM loan_approval
GROUP BY City_Tier_Label
ORDER BY Approval_rate_pct DESC;



-- Identify Factors Associated with Loan Approval Outcomes

SELECT 
    Loan_status,
    AVG(credit_score) AS avg_credit_score,
    AVG(Monthly_income) AS avg_income,
    AVG(Existing_Loan_Amount) AS avg_debt,
    AVG(Loan_Amount) AS avg_loan_amount
FROM loan_approval
GROUP BY Loan_status;


-- Portfolio composition by purpose

SELECT 
Loan_Purpose, COUNT(*) AS Num_loans,
SUM(Loan_Amount) AS total_value,
ROUND(
(SUM(Loan_Amount) * 100.0) /
              (SELECT SUM(Loan_Amount)
              FROM loan_approval), 2) AS pct_of_portfolio
              FROM loan_approval
              GROUP BY Loan_Purpose
              ORDER BY total_value DESC;

