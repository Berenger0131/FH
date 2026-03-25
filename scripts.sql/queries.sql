USE fasohealth;

-- PART 2.3: UPDATE & DELETE
UPDATE patient SET telephone = '71112233' WHERE patient_id = 1;
UPDATE rendezvous SET statut = 'confirmed' WHERE rendezvous_id = 2;
UPDATE medecin SET specialite = 'Senior Cardiologist' WHERE medecin_id = 1;

DELETE FROM prescription WHERE prescription_id = 10;
DELETE FROM rendezvous WHERE statut = 'cancelled';

-- PART 2.4: SELECT QUERIES
-- 1. Retrieve all records
SELECT * FROM patient;

-- 2. Specific columns with WHERE
SELECT nom, prenom FROM medecin WHERE departement_id = 1;

-- 3. Sorted results using ORDER BY
SELECT * FROM patient ORDER BY age DESC;

-- 4. Limited results using LIMIT
SELECT * FROM patient LIMIT 5;

-- 5. Filter using LIKE
SELECT * FROM patient WHERE nom LIKE 'O%';

-- 6. JOIN across three tables
SELECT p.nom AS Patient_Name, m.nom AS Doctor_Name, d.nom AS Department
FROM rendezvous r
JOIN patient p ON r.patient_id = p.patient_id
JOIN medecin m ON r.medecin_id = m.medecin_id
JOIN departement d ON m.departement_id = d.departement_id;

-- PART 3: AGGREGATE FUNCTIONS & REPORTING
SELECT COUNT(*) AS Total_Patients FROM patient;
SELECT AVG(age) AS Average_Age FROM patient;
SELECT MAX(age) AS Max_Age, MIN(age) AS Min_Age FROM patient;

-- Summary Report (JOIN + GROUP BY + HAVING)
-- Shows departments with more than 1 appointment
SELECT d.nom AS Department_Name, COUNT(r.rendezvous_id) as Total_Appointments
FROM departement d
JOIN medecin m ON d.departement_id = m.departement_id
JOIN rendezvous r ON m.medecin_id = r.medecin_id
GROUP BY d.nom
HAVING Total_Appointments > 0;