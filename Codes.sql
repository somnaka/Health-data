#Create Database Som;
-- Count of patients according to Gender by BloodType
Select count(Gender), BloodType 
From health_data
group by BloodType;


-- Count the number of patients with an admission_period greater than 2 weeks by hospital admitted
SELECT COUNT(*) AS patient_count, Hospital
FROM health_data 
WHERE admission_period > 14
group by Hospital
Order by Hospital Asc;


-- Count the number of patients with an admission_period greater than 2 weeks by Gender
SELECT COUNT(*) AS patient_count, Gender
FROM health_data 
WHERE admission_period > 14
group by Gender;


-- patients admitted after certain period
select Name as Patients, Doctor, Hospital
From health_data
where Test_Results = "Abnormal" and Date_of_admission >= 7/1/2020
Order by Name Asc;


-- identifyting patients who were admitted for 20days and above under emergency  
select Name as Patient, Doctor, Hospital, Test_Results
from health_data 
where Admission_period >20 and Admission_Type = "Emergency"
Order by Name Asc;

-- count of patients by result of test.
select Test_Results, Count(Name)
From health_data
Group by Test_Results
Order by Test_Results Asc;