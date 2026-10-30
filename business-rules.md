BUSINESS RULES FOR STUDENT DATABASE MANAGEMENT SYSTEM.

Based on the student management ERD (DEPARTMENT, COURSE, LECTURE, STUDENT, ENROLLMENT, RESULT, SCHOLARSHIP, ATTENDANCE)


DEPARTMENT

The institution is organised into DEPARTMENTS. Each DEPARTMENT is uniquely identified by a Department_ID and is described by a Department_Name and Department_Building. A DEPARTMENT may offer one or more COURSES and employ one or more LECTURERS. Every COURSE and every LECTURER must belong to exactly one DEPARTMENT.

COURSE

Each COURSE is uniquely identified by a Course_ID and is described by a Course_Name and a Course_Duration. A COURSE belongs to one and only one DEPARTMENT, which is recorded through the Department_ID foreign key. A COURSE can be taught by one or more LECTURERS, and a LECTURER may teach one or more COURSES through the COURSE_LECTURER entity. A COURSE may have many STUDENTS enrolled through ENROLLMENT records. A COURSE cannot exist without a valid DEPARTMENT.


LECTURE

Each LECTURER is uniquely identified by a Lecturer_ID and is described by a Lecturer_Name and Email. A LECTURER belongs to exactly one DEPARTMENT and may teach one or more COURSES through the COURSE_LECTURER entity. A LECTURER can teach many STUDENTS, and a STUDENT may be taught by many LECTURERS, as recorded through the STUDENT_LECTURER entity. The LECTURER's email address must be unique.

STUDENT 

Each STUDENT is uniquely identified by a Student_ID and is described by a Student_Name, Email, Address, and Age. A STUDENT may enroll in multiple COURSES through ENROLLMENT records and may receive multiple RESULTS, with one RESULT recorded for each COURSE assessed. A STUDENT may have many ATTENDANCE records and may be awarded zero or one SCHOLARSHIP. The STUDENT's email address must be unique, and the STUDENT's age must be a positive number.

ENROLLMENT 

ENROLLMENT records the registration of a STUDENT in a COURSE. Each ENROLLMENT is uniquely identified by an Enrollment_ID and records the Enrollment_Date. Every ENROLLMENT is associated with exactly one STUDENT through Student_ID and exactly one COURSE through Course_ID; therefore, an ENROLLMENT cannot exist without both a valid STUDENT and a valid COURSE. A STUDENT may have many ENROLLMENTS, and a COURSE may have many ENROLLMENTS. A STUDENT may enroll in the same COURSE only once.

RESULT

RESULT records a STUDENT's performance in a COURSE. Each RESULT is uniquely identified by a Result_ID and includes the Marks obtained and a Result_Status such as Pass, Fail, or Pending. Every RESULT is associated with exactly one ENROLLMENT through Enrollment_ID, and therefore relates to one STUDENT and one COURSE. A STUDENT should have only one RESULT for each ENROLLMENT. The marks must fall within a valid range, for example, 0 to 100.

SCHOLARSHIP

SCHOLARSHIP is uniquely identified by a Scholarship_ID and is described by a Scholarship_Name and Amount. Each SCHOLARSHIP is awarded to exactly one STUDENT through Student_ID. A STUDENT may receive either no SCHOLARSHIP or one SCHOLARSHIP. The Amount awarded must be greater than zero.

ATTENDANCE 

ATTENDANCE records whether a STUDENT was present on a particular day. Each ATTENDANCE record is uniquely identified by an Attendance_ID and includes the Attendance_Date and Status. Every ATTENDANCE record is linked to exactly one ENROLLMENT through Enrollment_ID, while an ENROLLMENT may have many ATTENDANCE records. 
