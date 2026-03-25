USE fasohealth;

-- Departments
INSERT INTO departement (nom) VALUES 
('Cardiology'), ('Dermatology'), ('Pediatrics'), ('Radiology'), ('Emergency'), 
('Neurology'), ('Gynecology'), ('Ophthalmology'), ('Dental'), ('Psychiatry');

-- Patients (10 rows)
INSERT INTO patient (nom, prenom, age, telephone) VALUES
('Ouattara','Ali',25,'70000001'), ('Sawadogo','Mariam',30,'70000002'),
('Zongo','Paul',40,'70000003'), ('Traore','Awa',22,'70000004'),
('Diallo','Ibrahim',35,'70000005'), ('Kaboré','Fatou',28,'70000006'),
('Sanogo','Moussa',45,'70000007'), ('Barry','Aminata',32,'70000008'),
('Nikiema','Jean',50,'70000009'), ('Compaore','Salif',29,'70000010');

-- Doctors (10 rows)
INSERT INTO medecin (nom, specialite, departement_id) VALUES
('Dr Kone','Cardiologist',1), ('Dr Diallo','Dermatologist',2), ('Dr Ouedraogo','Pediatrician',3),
('Dr Sanon','Radiologist',4), ('Dr Ilboudo','General Practitioner',5), ('Dr Bamba','Neurologist',6),
('Dr Some','Gynecologist',7), ('Dr Tiendrebeogo','Ophthalmologist',8), ('Dr Sidibe','Dentist',9),
('Dr Tall','Psychiatrist',10);

-- Appointments (10 rows)
INSERT INTO rendezvous (patient_id, medecin_id, date_rdv, heure, statut) VALUES
(1,1,'2026-03-20','10:00:00','confirmed'), (2,2,'2026-03-21','11:00:00','pending'),
(3,3,'2026-03-22','09:30:00','confirmed'), (4,4,'2026-03-23','14:00:00','cancelled'),
(5,5,'2026-03-24','15:00:00','confirmed'), (6,6,'2026-03-25','08:00:00','pending'),
(7,7,'2026-03-26','10:30:00','confirmed'), (8,8,'2026-03-27','12:00:00','confirmed'),
(9,9,'2026-03-28','13:00:00','pending'), (10,10,'2026-03-29','16:00:00','confirmed');

-- Prescriptions (10 rows)
INSERT INTO prescription (rendezvous_id, medicament, dosage) VALUES
(1,'Aspirin','100mg'), (2,'Sunscreen','Apply twice'), (3,'Cough Syrup','1 spoon'),
(5,'Paracetamol','1g'), (7,'Vitamins','1 morning'), (8,'Eye Drops','2 drops'),
(10,'Anxiolytic','5mg'), (1, 'Beta-blocker', '1x/day'), (3, 'Amoxicillin', '500mg'), (5, 'Ibuprofen', '2x/day');