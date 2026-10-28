# Business Rules for the Student Management System

## 1. Department
- Each department is uniquely identified by Department_ID.
- A department has a Department_Name and Department_Building.
- A department can offer one or more courses.
- A department can employ one or more lecturers.
- Every course must belong to exactly one department.
- Every lecturer must belong to exactly one department.

## 2. Course
- Each course is uniquely identified by Course_ID.
- A course has a Course_Name and Course_Duration.
- Each course belongs to exactly one department.
- A course can be taught by one or more lecturers.
- A course can have many students enrolled in it.
- A course must have a valid department before it can be recorded.

## 3. Lecturer
- Each lecturer is uniquely identified by Lecturer_ID.
- A lecturer has a Lecturer_Name and Email.
- A lecturer belongs to exactly one department.
- A lecturer can teach zero or more courses.
- Each lecturer email must be unique.
- A lecturer must be assigned to a valid department.

## 4. Student
- Each student is uniquely identified by Student_ID.
- A student has Student_Name, Email, Address, and Age.
- A student email must be unique.
- A student may enroll in many courses.
- A student may receive zero or more scholarships.
- A student may have many attendance records.
- A student may receive one result for each enrolled course.
- Student age must be a valid positive number.

## 5. Enrollment
- Each enrollment is uniquely identified by Enrollment_ID.
- An enrollment records the date a student enrolled in a course.
- Each enrollment belongs to exactly one student and exactly one course.
- A student can enroll in a course only once.
- A student may have many enrollments.
- A course may have many enrollments.
- An enrollment cannot exist without a valid student and valid course.

## 6. Result
- Each result is uniquely identified by Result_ID.
- A result stores the Marks obtained and Result_Status.
- Each result belongs to exactly one student and exactly one course.
- A student should have only one result per course.
- Marks must be within a valid range, such as 0 to 100.
- A result cannot exist without a valid student and course.

## 7. Scholarship
- Each scholarship is uniquely identified by Scholarship_ID.
- A scholarship has a Scholarship_Name and Amount.
- A scholarship is awarded to exactly one student.
- A student may receive zero, one, or many scholarships.
- The scholarship amount must be greater than zero.
- A scholarship cannot exist without a valid student.

## 8. Attendance
- Each attendance record is uniquely identified by Attendance_ID.
- An attendance record contains Attendance_Date.
- Each attendance record belongs to exactly one student.
- A student may have many attendance records over time.
- Each attendance record must be linked to a valid student.

## Summary
The system supports the academic administration of a university by managing departments, lecturers, courses, student enrollments, attendance, scholarships, and results.
