# ============================================================
# FASOHEALTH - HOSPITAL MANAGEMENT SYSTEM
# CS27 - THE RELATIONAL MODEL & DATABASES
# ============================================================

## 1. PROJECT OVERVIEW
[cite_start]**FasoHealth** is a relational database solution designed to manage hospital operations efficiently[cite: 11, 12]. [cite_start]It handles patient records, medical staff assignments, department organization, and the lifecycle of medical appointments and prescriptions[cite: 17].

* [cite_start]**Scenario:** Hospital Management System (Scenario #2)[cite: 17].
* [cite_start]**Instructor:** Kweyakie Afi Blebo[cite: 5].
* [cite_start]**Deadline:** 15th March 2026[cite: 6].
* [cite_start]**Institution:** Burkina Institute of Technology (BIT)[cite: 4].

---

## 2. DATABASE DESIGN
### [cite_start]2.1 Entities & Primary Keys [cite: 20, 21]
* **Patient:** Stores personal details. (PK: patient_id)
* **Departement:** Medical units (e.g., Cardiology). (PK: departement_id)
* **Medecin:** Healthcare providers. (PK: medecin_id)
* **Rendezvous:** Schedule of visits. (PK: rendezvous_id)
* **Prescription:** Medical orders. (PK: prescription_id)

### [cite_start]2.2 Relationships [cite: 22, 23]
* **Department to Doctor (1:M):** One department employs many doctors.
* **Patient to Appointment (1:M):** A patient can book multiple appointments.
* **Doctor to Appointment (1:M):** A doctor sees many patients.
* **Appointment to Prescription (1:1):** Each appointment results in one prescription.

---

## 3. IMPLEMENTATION DETAILS
[cite_start]This repository contains the following SQL scripts[cite: 14]:

1. [cite_start]**schema.sql**: Database and table creation with full referential integrity[cite: 30, 31].
2. [cite_start]**data.sql**: 10 realistic rows of data per table[cite: 33, 34].
3. [cite_start]**queries.sql**: Data manipulation (UPDATE/DELETE) and advanced SELECT queries[cite: 36, 38].

---

## [cite_start]4. NORMALIZATION WALKTHROUGH [cite: 26, 27, 28]
The database was designed to satisfy **3rd Normal Form (3NF)**:
* **1NF:** All attributes are atomic; no multi-valued fields.
* **2NF:** All non-key attributes are fully dependent on the primary key.
* **3NF:** Eliminated transitive dependencies by separating Departments from Doctors.

---

## [cite_start]5. AGGREGATE FUNCTIONS & REPORTING [cite: 40, 41, 42]
The project includes automated reports using:
* **COUNT**: To track total patient volume.
* **AVG/MIN/MAX**: For age demographics analysis.
* **GROUP BY & HAVING**: To monitor departmental workload.

---

## [cite_start]6. PROJECT DELIVERABLES [cite: 14]
* **GitHub Repository:** SQL source code and documentation.
* **PowerPoint Presentation:** Design decisions and schema diagrams.
* **Video Walkthrough:** 5-10 minute YouTube demonstration.

# ============================================================
# END OF DOCUMENT
# ============================================================