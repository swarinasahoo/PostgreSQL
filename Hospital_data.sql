-- HOSPITAL PATIENTS DATA ANALYSIS 

-- Before importing the data from CSV., first create a table 
-- with matching headers of hospital_data

CREATE TABLE hospital_data (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    disease VARCHAR(50),
    doctor_name VARCHAR(50),
    admission_date DATE,
    treatment_cost NUMERIC(10,2),
    payment_method VARCHAR(20)
);

SELECT * FROM hospital_data;

-- 1. Show all patients from Hyderabad
SELECT * FROM hospital_data WHERE city = 'Hyderabad';

-- 2. Count total number of patients
SELECT COUNT(*) AS total_patients FROM hospital_data;

-- 3. Display all patients diagnosed with Diabetes
SELECT * FROM hospital_data WHERE disease = 'Diabetes';

-- 4. Find total treatment cost of all patients
SELECT SUM(treatment_cost) AS total_treatment_cost FROM hospital_data;

-- 5. Show top 5 highest treatment costs
SELECT * FROM hospital_data ORDER BY treatment_cost DESC LIMIT 5;

-- 6. Count number of patients per city
SELECT city, COUNT(*) AS total_patients FROM hospital_data GROUP BY city;

-- 7. Find average treatment cost by disease
SELECT disease, ROUND(AVG(treatment_cost), 2) AS avg_cost FROM hospital_data GROUP BY disease;

-- 8. Show maximum and minimum treatment cost
SELECT 
	MAX(treatment_cost) AS max_cost, 
	MIN(treatment_cost) AS min_cost
FROM hospital_data;

-- 9. Display patients admitted in last 7 days
SELECT * FROM hospital_data 
WHERE admission_date >= CURRENT_DATE - INTERVAL '9 days';

SELECT * FROM hospital_data;
-- 10. Show total treatment cost by payment method
SELECT payment_method, SUM(treatment_cost) AS total_cost 
FROM hospital_data GROUP BY payment_method;

-- 11. Categorize patients as 'High Cost' or 'Low Cost'
SELECT patient_name, treatment_cost, 
CASE 
	WHEN treatment_cost > 30000 THEN 'HIGH COST'
	ELSE 'LOW COST'
END AS cost_category FROM hospital_data;

-- 12. Categorize patients by age group
SELECT patient_name, age, 
CASE 
	WHEN age < 18 THEN 'CHILD'
	WHEN age BETWEEN 18 AND 60 THEN 'ADULT'
	ELSE 'SENIOR'
END AS age_group FROM hospital_data;

-- 13. Show disease severity based on cost
-- 50000 → Critical
-- 20000–50000 → Moderate
-- <20000 → Mild
SELECT patient_name, disease, treatment_cost, 
CASE 
	WHEN treatment_cost > 50000 THEN 'CRITICAL'
	WHEN treatment_cost BETWEEN 20000 AND 50000 THEN 'MODERATE'
	ELSE 'MILD'
END AS severity FROM hospital_data;

-- 14. Count number of patients in each cost category
SELECT 
CASE
	WHEN treatment_cost > 30000 THEN 'HIGH COST'
	ELSE 'LOW COST'
END AS cost_category, 
COUNT(*) AS total_patients FROM hospital_data GROUP BY cost_category;

-- 15. Find cities with more than 10 high-cost patients
SELECT city, 
COUNT(*) AS high_cost_patients FROM hospital_data 
WHERE treatment_cost > 30000 GROUP BY city HAVING COUNT(*) > 5;






























