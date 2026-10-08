-- Create Course table
CREATE TABLE Course (
    CourseID NUMBER(5),
    CourseName VARCHAR2(50),
    Credits NUMBER(2)
);

-- Insert Course records
INSERT INTO Course VALUES (201, 'Database Systems', 4);
INSERT INTO Course VALUES (202, 'Data Structures', 3);
INSERT INTO Course VALUES (203, 'Mathematics', 4);

-- Create Enrollment table
CREATE TABLE Enrollment (
    EnrollmentID NUMBER(5),
    StudentID NUMBER(5),
    CourseID NUMBER(5)
);

-- Insert Enrollment records
INSERT INTO Enrollment VALUES (1, 1001, 201);
INSERT INTO Enrollment VALUES (2, 1001, 202);
INSERT INTO Enrollment VALUES (3, 1002, 203);
INSERT INTO Enrollment VALUES (4, 1003, 201);

-- LEFT JOIN
SELECT Course.CourseID,
       Course.CourseName,
       Course.Credits,
       Enrollment.EnrollmentID,
       Enrollment.StudentID
FROM Course
LEFT JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID;

-- RIGHT JOIN
SELECT Course.CourseID,
       Course.CourseName,
       Course.Credits,
       Enrollment.EnrollmentID,
       Enrollment.StudentID
FROM Course
RIGHT JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID;
