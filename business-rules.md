BUSINESS RULES FOR STUDENT DATABASE MANAGEMENT SYSTEM

DEPARTMENT
The institution is organised into DEPARTMENTS. Each DEPARTMENT is uniquely identified by a Department_ID and has a Department_Name and a Department_B attribute. A DEPARTMENT offers one or more COURSES and employs one or more LECTURERS. Every COURSE and every LECTURER must belong to exactly one DEPARTMENT.

COURSE
Each COURSE is uniquely identified by a Course_ID and is described by a Course_Name and a Course_Duration. A COURSE belongs to one DEPARTMENT, which is recorded through the Department_ID foreign key, and it is linked to its LECTURERS through the Lecture_ID foreign key. A COURSE can be taught by one or more LECTURERS, and it can have many STUDENTS enrolled in it. A COURSE cannot exist without a valid DEPARTMENT.

LECTURE
A LECTURER is uniquely identified by a Lecture_ID and is described by a Lecture_Name and an Email. A LECTURER belongs to one DEPARTMENT and can teach one or more COURSES, which is recorded through the Course_ID foreign key. A COURSE can also be taught by only one LECTURER. A LECTURER can teach many STUDENTS, and a STUDENT can be taught by many LECTURERS. The LECTURER's email address must be unique.

STUDENT
Each STUDENT is uniquely identified by a Student_ID and is described by a Student_Name, Email, Address and Age. A STUDENT can enrol in many COURSES and can receive many RESULTS, one for each COURSE assessed. A STUDENT can have many ATTENDANCE records and can be awarded zero or more SCHOLARSHIPS. A STUDENT's email address must be unique, and their age must be a positive number.

ENROLLMENT
ENROLLMENT records the registration of a STUDENT in a COURSE. It is uniquely identified by an Enrollment_ID and records the Enrollment_Date. Each ENROLLMENT is linked to exactly one COURSE through Course_ID and exactly one STUDENT through Student_ID, so it cannot exist without both. A STUDENT can enrol in a given COURSE only once. A STUDENT can have many ENROLLMENTS, and a COURSE can have many ENROLLMENTS.

RESULT
A RESULT records a STUDENT's performance in a COURSE. It is uniquely identified by a Result_ID and includes the Marks obtained and a Result_Status such as Pass, Fail or Pending. Each RESULT belongs to exactly one STUDENT through Student_ID and exactly one COURSE through Course_ID. A STUDENT should have only one RESULT per COURSE. The marks must fall within a valid range, for example 0 to 100.

SCHOLARSHIP
A SCHOLARSHIP is uniquely identified by a Scholarship_ID and is described by a Scholarship_Name and an Amount. Each SCHOLARSHIP record is awarded to exactly one STUDENT through Student_ID. A STUDENT may receive no SCHOLARSHIP, one SCHOLARSHIP or several, and the amount must be greater than zero.
ATTENDANCE

ATTENDANCE records whether a STUDENT was present on a particular day. Each record is uniquely identified by an Attendance_ID and includes the Attendance_Date. Every ATTENDANCE record belongs to exactly one STUDENT through Student_ID, while a STUDENT can have many ATTENDANCE records over time.

