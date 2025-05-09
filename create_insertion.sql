-- Create Dim_Gender Table
CREATE TABLE Dim_Gender (
    GenderID INT PRIMARY KEY,
    Gender NVARCHAR(10)
);

-- Create Dim_Degree Table
CREATE TABLE Dim_Degree (
    DegreeID INT PRIMARY KEY,
    Degree_Program NVARCHAR(50)
);

-- Create Dim_Skills Table
CREATE TABLE Dim_Skills (
    SkillID INT PRIMARY KEY,
    Skills_Acquired NVARCHAR(255)
);

-- Create Dim_Technologies Table
CREATE TABLE Dim_Technologies (
    TechID INT PRIMARY KEY,
    Technologies_Used NVARCHAR(255)
);

-- Create Dim_Student Table
CREATE TABLE Dim_Student (
    StudentID INT PRIMARY KEY,
    Name NVARCHAR(100),
    GenderID INT FOREIGN KEY REFERENCES Dim_Gender(GenderID),
    Age INT,
    DegreeID INT FOREIGN KEY REFERENCES Dim_Degree(DegreeID),
    Year_of_Study INT
);

-- Create Dim_Career Table
CREATE TABLE Dim_Career (
    CareerID INT PRIMARY KEY,
    Desired_Career_Path NVARCHAR(100),
    SkillID INT FOREIGN KEY REFERENCES Dim_Skills(SkillID)
);

-- Create Dim_Project Table
CREATE TABLE Dim_Project (
    ProjectID INT PRIMARY KEY,
    Number_Of_Projects_Done INT,
    TechID INT FOREIGN KEY REFERENCES Dim_Technologies(TechID)
);

-- Create Dim_Internship Table
CREATE TABLE Dim_Internship (
    InternshipID INT PRIMARY KEY,
    Internship_Experience NVARCHAR(3),
    Duration NVARCHAR(20)
);

-- Create Fact_Employment Table
CREATE TABLE Fact_Employment (
    EmploymentID INT PRIMARY KEY,
    StudentID INT FOREIGN KEY REFERENCES Dim_Student(StudentID),
    CareerID INT FOREIGN KEY REFERENCES Dim_Career(CareerID),
    InternshipID INT FOREIGN KEY REFERENCES Dim_Internship(InternshipID),
    Employment_Status NVARCHAR(50),
    Job_Search_Duration NVARCHAR(20),
    Job_Search_Platforms_Used NVARCHAR(255)
);

-- Create Fact_Project_Details Table
CREATE TABLE Fact_Project_Details (
    ProjectDetailID INT PRIMARY KEY,
    StudentID INT FOREIGN KEY REFERENCES Dim_Student(StudentID),
    ProjectID INT FOREIGN KEY REFERENCES Dim_Project(ProjectID),
    Project_Completion_Status NVARCHAR(20)
);

-- Insert sample data into Dim_Gender
INSERT INTO Dim_Gender VALUES
(1, 'Female'),
(2, 'Male');

-- Insert sample data into Dim_Degree
INSERT INTO Dim_Degree VALUES
(1, 'B.Tech'),
(2, 'M.Tech');

-- Insert sample data into Dim_Skills
INSERT INTO Dim_Skills VALUES
(1, 'HTML, CSS, JS'),
(2, 'Java, C++'),
(3, 'Python, TensorFlow'),
(4, 'Ethical Hacking'),
(5, 'Python, R');

-- Insert sample data into Dim_Technologies
INSERT INTO Dim_Technologies VALUES
(1, 'C, Python, Java'),
(2, 'HTML, CSS, JavaScript'),
(3, 'MySQL, MongoDB'),
(4, 'TensorFlow, AI/ML'),
(5, 'Unity, C#');

-- Insert sample data into Dim_Student
INSERT INTO Dim_Student VALUES
(1, 'Prasanna', 1, 19, 1, 3),
(2, 'Lavanya', 1, 18, 1, 3),
(3, 'Rohit', 2, 19, 1, 3),
(4, 'Jaswanth', 2, 20, 1, 3),
(5, 'Syam', 2, 21, 1, 3),
(6, 'Ravi', 2, 20, 1, 2),
(7, 'Anjali', 1, 19, 1, 3),
(8, 'Kiran', 2, 21, 1, 4),
(9, 'Meena', 1, 22, 2, 1),
(10, 'Rahul', 2, 20, 1, 3);

-- Insert sample data into Dim_Career
INSERT INTO Dim_Career VALUES
(1, 'Web Development', 1),
(2, 'Software Development', 2),
(3, 'AI/ML', 3),
(4, 'Cyber Security', 4),
(5, 'Data Science', 5);

-- Insert sample data into Dim_Project
INSERT INTO Dim_Project VALUES
(1, 0, 1),
(2, 1, 2),
(3, 0, 1),
(4, 1, 2),
(5, 2, 4);

-- Insert sample data into Dim_Internship
INSERT INTO Dim_Internship VALUES
(1, 'Yes', '2 months'),
(2, 'No', '0 months'),
(3, 'Yes', '1 month'),
(4, 'No', '0 months'),
(5, 'Yes', '3 months');


-- Insert sample data into Fact_Project_Details
INSERT INTO Fact_Project_Details VALUES
(1, 1, 1, 'Completed'),
(2, 2, 2, 'In Progress'),
(3, 3, 3, 'Not Started'),
(4, 4, 4, 'Completed'),
(5, 5, 5, 'In Progress'),
(6, 6, 2, 'Completed'),
(7, 7, 1, 'Not Started'),
(8, 8, 4, 'Completed'),
(9, 9, 3, 'In Progress'),
(10, 10, 5, 'Completed');

-- Insert sample data into Fact_Employment
INSERT INTO Fact_Employment VALUES
(1, 1, 1, 1, 'Employed', '1 month', 'LinkedIn'),
(2, 2, 2, 2, 'Unemployed', '2 months', 'Naukri'),
(3, 3, 3, 3, 'Employed', '1 week', 'Indeed'),
(4, 4, 4, 4, 'Unemployed', '3 months', 'Referral'),
(5, 5, 5, 5, 'Employed', '1 month', 'Company Website'),
(6, 6, 1, 3, 'Employed', '1.5 months', 'Monster'),
(7, 7, 2, 4, 'Unemployed', '2 weeks', 'Internshala'),
(8, 8, 3, 1, 'Employed', '1 month', 'LinkedIn'),
(9, 9, 4, 2, 'Employed', '3 months', 'Indeed'),
(10, 10, 5, 5, 'Unemployed', '4 months', 'Referral');