# Student Management System

This project is a database design for a student management system used to manage departments, lecturers, courses, students, enrollments, attendance, scholarships, and results.

## Project Summary
This database supports the management of academic records and administrative functions for a university or college. It stores information about departments, lecturers, courses, students, enrollments, attendance, scholarships, and results.

## Entity Overview
- Department
- Lecturer
- Course
- Student
- Enrollment
- Result
- Scholarship
- Attendance

## Database Design
The design follows a normalized relational database structure and includes primary keys, foreign keys, uniqueness constraints, and validation checks.

## Files in this Repository
- `schema.sql` – SQL schema for the database
- `business-rules.md` – formal business rules for the system
- `erd-description.md` – entity relationship explanation
- `project-report.md` – academic-style project report section
- `README.md` – overview of the repository

## Main Relationships
- A department offers many courses
- A department employs many lecturers
- A lecturer teaches many courses
- A student enrolls in many courses
- A course has many students through enrollments
- A student receives many attendance records
- A student may receive many scholarships
- A student receives many results, one per course

## SQL Standards
The schema is written in Oracle-compatible SQL syntax using `VARCHAR2`, `NUMBER`, and `DATE` data types.

## Group Project Note
This repository was prepared as part of a school project and contains the corrected database design and related documentation.
