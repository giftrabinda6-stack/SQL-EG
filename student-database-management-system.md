# STUDENT DATABASE MANAGEMENT SYSTEM

```text
┌───────────────────────────────────────────────────────────────────────────────────────────────┐
│                                                                                       │
│  ┌─────────────────┐          ┌─────────────────┐          ┌─────────────────┐        │
│  │ DEPARTMENT      │          │ COURSE          │          │ LECTURER        │        │
│  │-----------------|          │-----------------|          │-----------------|        │
│  │ PK  Department_ID │         │ PK  Course_ID   │          │ PK  Lecturer_ID │        │
│  │    Department_Name│         │    Course_Name  │          │    Lecturer_Name│       │
│  │    Department_Building │    │    Course_Duration │       │    Email        │        │
│  │                 │          │    Department_ID │       │    Course_ID FK │        │
│  └─────────┬───────┘          └───────┬─────────┘          └────────┬────────┘        │
│            │                               │                             │                │
│            │                               │                             │                │
│            └───────────────┬───────────────────────┘                             │                │
│                            │                                                     │                │
│                           ┌───────────────────┐                                    │
│                           │ COURSE_LECTURER   │                                    │
│                           │-------------------│                                    │
│                           │ PK,FK1 Course_ID  │                                    │
│                           │ PK,FK2 Lecturer_ID│                                    │
│                           │ PK Course_Lecturer_ID │                                 │
│                           │ Academic_Year    │                                    │
│                           │ Semester          │                                    │
│                           └─────────┬─────────┘                                    │
│                                     │                                              │
│                                     │                                              │
│   ┌───────────────────┐       ┌──────────────────────┐     ┌──────────────────────┐    │
│   │ STUDENT           │       │ ENROLLMENT           │     │ RESULTS              │    │
│   │-------------------│       │----------------------│     │----------------------│    │
│   │ PK   Student_ID    │       │ PK  Enrollment_ID    │     │ PK  Result_ID        │    │
│   │     Student_Name   │       │    Enrollment_Date   │     │     Result_Status    │    │
│   │     Age            │       │ FK  Student_ID       │     │     Marks            │    │
│   │     Address        │       │ FK  Course_ID        │     │ FK  Enrollment_ID    │    │
│   │     Email          │       └──────────────┬───────┘     └──────────────────────┘    │
│   └─────────┬─────────┘                      │                                              │
│             │                                │                                              │
│             │                                │                                              │
│             │                                └───────────────────────────────┬──────────│
│             │                                                        │
│       ┌─────┴──────────────┐                                  ┌──────────────┴──────┐
│       │ SCHOLARSHIP       │                                  │ ATTENDANCE          │
│       │------------------ │                                  │--------------------│
│       │ PK Scholarship_ID │                                  │ PK Attendance_ID    │
│       │    Scholarship_Name │                                │    Attendance_Date  │
│       │    Amount         │                                  │    Status           │
│       │ FK Student_ID     │                                  │ FK Enrollment_ID    │
│       └───────────────────┘                                  └─────────────────────┘
│                                                                                       │
│  ┌──────────────────────────────────────────────────────────────────────────────┐        │
│  │ STUDENT_LECTURER                                                             │        │
│  │-------------------------------                                              │        │
│  │ PK,FK1 Student_ID                                                            │        │
│  │ PK,FK2 Lecturer_ID                                                           │        │
│  │ PK Student_Lecture_ID                                                        │        │
│  │     Semester                                                                  │        │
│  └──────────────────────────────────────────────────────────────────────────────┘        │
│                                                                                       │
└───────────────────────────────────────────────────────────────────────────────────────────────┘
```
