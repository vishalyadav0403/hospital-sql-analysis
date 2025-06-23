DROP TABLE IF EXISTS hospital

CREATE TABLE hospital(
   hospital_name TEXT,
   location VARCHAR(15),
   department VARCHAR(25),
   doctors_count INT,
   patients_count INT,
   admission_date DATE,
   discharge_date DATE,
   medical_expenses FLOAT
);
SELECT * FROM hospital

COPY hospital(hospital_name, location, department, doctors_count, patients_count, admission_date, discharge_date, medical_expenses)
FROM 'D:\C DATA\Desktop\new sql project\Hospital_Data.csv'
CSV HEADER;


--Total Number of Patients 
Create view number_of_patient as
SELECT SUM(patients_count) AS total_number_patients FROM hospital

-- Average Number of Doctors per Hospital 
Create view avg_number_doctors_per_hospital as
SELECT hospital_name, AVG(doctors_count) AS avg_doctor  
FROM hospital GROUP BY hospital_name

--Top 3 Departments with the Highest Number of Patients 
Create view highest_number_patient as
SELECT department, SUM(patients_count) AS total_patients
FROM hospital
GROUP BY department
ORDER BY total_patients
LIMIT 3

--Hospital with the Maximum Medical Expenses
Create view max_medical_expe as
SELECT hospital_name, SUM(medical_expenses) AS total_expenses
FROM hospital
GROUP BY hospital_name
ORDER BY total_expenses DESC
LIMIT 1

-- Daily Average Medical Expenses 
Create view avg_medicalexpen as
SELECT admission_date, AVG(medical_expenses) AS daily_avg_med_exp
FROM hospital
GROUP BY admission_date
ORDER BY admission_date

--Longest Hospital Stay
Create view longest_hospital_stay as
SELECT *,
    (discharge_date - admission_date) AS longeststay
FROM hospital
ORDER BY longeststay DESC
LIMIT 1

--Total Patients Treated Per City 
Create view patients_treated_per_city as
SELECT location, SUM(patients_count) AS total_patients
FROM hospital
GROUP BY location
ORDER BY total_patients desc

--Average Length of Stay Per Department
Create view avg_lenght_stay_per_dep as
SELECT department, 
 AVG(discharge_date - admission_date) AS lenght_stay
FROM hospital GROUP BY department ORDER BY lenght_stay DESC

--Identify the Department with the Lowest Number of Patients 
Create view lowest_number_patients as
SELECT department, SUM(patients_count) AS total_patients
FROM hospital GROUP BY department ORDER BY total_patients ASC

--Monthly Medical Expenses Report 
Create view monthly_medical_expenses as
SELECT date_trunc ('month', admission_date) AS month,
       SUM(medical_expenses) AS total_expenses
FROM hospital GROUP BY month ORDER BY month



--1.Total Number of Patients 
SELECT * FROM number_of_patient
--2. Average Number of Doctors per Hospital 
SELECT * FROM avg_number_doctors_per_hospital
--3. Top 3 Departments with the Highest Number of Patients 
 SELECT * FROM highest_number_patient
--4. Hospital with the Maximum Medical Expenses 
SELECT * FROM max_medical_expe
--5. Daily Average Medical Expenses 
SELECT * FROM avg_medicalexpen
--6. Longest Hospital Stay 
SELECT * FROM longest_hospital_stay
--7. Total Patients Treated Per City 
SELECT * FROM patients_treated_per_city
--8. Average Length of Stay Per Department 
SELECT * FROM avg_lenght_stay_per_dep
--9. Identify the Department with the Lowest Number of Patients 
SELECT * FROM lowest_number_patients
--10. Monthly Medical Expenses Report
SELECT * FROM monthly_medical_expenses


