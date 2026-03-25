-- FASOHEALTH DATABASE SCHEMA
-- Developed for CS27 Project | BIT

CREATE DATABASE IF NOT EXISTS fasohealth;
USE fasohealth;

-- 1. DEPARTEMENT TABLE
CREATE TABLE departement (
    departement_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

-- 2. PATIENT TABLE
CREATE TABLE patient (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    age INT,
    telephone VARCHAR(20) UNIQUE
);

-- 3. MEDECIN (DOCTOR) TABLE
CREATE TABLE medecin (
    medecin_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    specialite VARCHAR(100),
    departement_id INT,
    FOREIGN KEY (departement_id) REFERENCES departement(departement_id)
);

-- 4. RENDEZVOUS (APPOINTMENT) TABLE
CREATE TABLE rendezvous (
    rendezvous_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    medecin_id INT,
    date_rdv DATE,
    heure TIME,
    statut VARCHAR(50) DEFAULT 'pending',
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (medecin_id) REFERENCES medecin(medecin_id)
);

-- 5. PRESCRIPTION TABLE
CREATE TABLE prescription (
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    rendezvous_id INT,
    medicament VARCHAR(100),
    dosage VARCHAR(50),
    FOREIGN KEY (rendezvous_id) REFERENCES rendezvous(rendezvous_id)
);