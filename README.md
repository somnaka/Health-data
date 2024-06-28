# Health-data
Data Analysis to idnetify trends in admission time and other trends amongst hospitals in an area.
#Create Database Som;
#identifyting patients who stayed 20days and above 
select Name as Patient, Doctor, Hospital, Test_Results
from health_data 
where Admission_period >20 and Admission_Type = "Emergency"
Order by Name Asc
