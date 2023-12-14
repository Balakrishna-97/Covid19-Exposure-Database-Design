use hospital;

 ----- Retrieve the count of patients----
SELECT COUNT(*) AS total_patients
FROM Records_Patients;


---- Find the number of doctors and nurses ---
SELECT 
    (SELECT COUNT(*) FROM Doctors) AS total_doctors,
    (SELECT COUNT(*) FROM Nurses) AS total_nurses;
    
    
--- List all patients with their respective doctors and nurses ---
SELECT 
    RP.Patient_ID,
    RP.First_Name AS Patient_FirstName,
    RP.Last_Name AS Patient_LastName,
    D.First_Name AS Doctor_FirstName,
    D.Last_Name AS Doctor_LastName,
    N.First_Name AS Nurse_FirstName,
    N.Last_Name AS Nurse_LastName
FROM Records_Patients RP
LEFT JOIN Doctors D ON RP.Doctor_ID = D.Doctor_ID
LEFT JOIN Nurses N ON RP.Nurse_ID = N.Nurse_ID;


--- Get the number of treatments administered by each doctor---
SELECT 
    D.First_Name,
    D.Last_Name,
    COUNT(*) AS treatments_administered
FROM Records_Treatments RT
JOIN Doctors D ON RT.Doctor_ID = D.Doctor_ID
GROUP BY D.Doctor_ID;

