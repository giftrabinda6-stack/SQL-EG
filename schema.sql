CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100) UNIQUE,
    Address VARCHAR2(150),
    Age INT CHECK (Age >= 0)
);

CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR2(100) NOT NULL,
    Department_Building VARCHAR2(100)
);

CREATE TABLE Lecturer (
    Lecturer_ID INT PRIMARY KEY,
    Department_ID INT,
    Lecturer_Name VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100) UNIQUE,
    CONSTRAINT fk_lecturer_department
        FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR2(100) NOT NULL,
    Lecturer_ID INT,
    Department_ID INT,
    Course_Duration INT CHECK (Course_Duration > 0),
    CONSTRAINT fk_course_lecturer
        FOREIGN KEY (Lecturer_ID) REFERENCES Lecturer(Lecturer_ID),
    CONSTRAINT fk_course_department
        FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

CREATE TABLE Enrollment (
    Enrollment_ID INT PRIMARY KEY,
    Course_ID INT,
    Student_ID INT,
    Enrollment_Date DATE DEFAULT SYSDATE,
    CONSTRAINT fk_enrollment_course
        FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID),
    CONSTRAINT fk_enrollment_student
        FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);

CREATE TABLE Scholarship (
    Scholarship_ID INT PRIMARY KEY,
    Scholarship_Name VARCHAR2(100) NOT NULL,
    Amount NUMBER(10,2) CHECK (Amount >= 0),
    Student_ID INT,
    CONSTRAINT fk_scholarship_student
        FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);

CREATE TABLE Attendance (
    Attendance_ID INT PRIMARY KEY,
    Student_ID INT,
    Attendance_Date DATE DEFAULT SYSDATE,
    Attended VARCHAR2(10) CHECK (Attended IN ('Present', 'Absent')),
    CONSTRAINT fk_attendance_student
        FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);

CREATE TABLE Result (
    Result_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,
    Marks NUMBER(5,2) CHECK (Marks BETWEEN 0 AND 100),
    Result_Status VARCHAR2(20) CHECK (Result_Status IN ('Pass', 'Fail', 'Pending')),
    CONSTRAINT fk_result_student
        FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    CONSTRAINT fk_result_course
        FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

-- Optional extra constraint to ensure one result per student per course
-- ALTER TABLE Result ADD CONSTRAINT uq_student_course UNIQUE (Student_ID, Course_ID);
