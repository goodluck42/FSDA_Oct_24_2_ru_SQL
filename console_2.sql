
------------------ ONE TO MANY
-- CREATE TABLE Students
-- (
--     Id        INT PRIMARY KEY IDENTITY,
--     FirstName NVARCHAR(747) NOT NULL,
--     MiddleName NVARCHAR(100) NOT NULL,
--     BirthDate DATE,
--     Gender BIT,
--     GroupId INT FOREIGN KEY REFERENCES Groups(Id),
-- )
--
-- CREATE TABLE Groups
-- (
--     Id INT PRIMARY KEY IDENTITY,
--     Name NVARCHAR(60) NOT NULL,
--     ClassNumber TINYINT
-- )
--
-- INSERT INTO Groups
-- VALUES ('FSDA_Oct_24_2_ru', 16),
--        ('NFT_252BC_Python_10:00_ru/2', 4)
--
--
-- SELECT *
-- FROM Students
-- WHERE GroupId = 1
--
-- INSERT INTO Students (FirstName, MiddleName, BirthDate, Gender, GroupId)
-- VALUES
-- ('Ravan', 'S.', '1900-03-15', 0, 1);
--
-- UPDATE Students
-- SET Gender = 1
-- WHERE Id = 42


-- SELECT S.FirstName, G.Name
-- FROM Students AS S, Groups AS G
-- WHERE S.Id = 42 AND S.GroupId = G.Id

-- SELECT S.FirstName, G.Name, G.ClassNumber
-- FROM Students AS S
-- JOIN Groups AS G ON S.GroupId = G.Id
-- WHERE S.GroupId = 2



-- INSERT INTO Students (FirstName, MiddleName, BirthDate, Gender, GroupId)
-- VALUES
-- ('John', 'A.', '2000-03-15', 1, 1),
-- ('Emily', 'B.', '2001-05-22', 0, 1),
-- ('Michael', 'C.', '1999-11-08', 1, 1),
-- ('Sarah', 'D.', '2000-07-30', 0, 1),
-- ('David', 'E.', '2001-01-14', 1, 1),
-- ('Jessica', 'F.', '2000-09-05', 0, 2),
-- ('Robert', 'G.', '1999-12-18', 1, 2),
-- ('Jennifer', 'H.', '2001-02-25', 0, 2),
-- ('William', 'I.', '2000-04-11', 1, 2),
-- ('Elizabeth', 'J.', '1999-10-03', 0, 2),
-- ('James', 'K.', '2001-06-19', 1, 1),
-- ('Olivia', 'L.', '2000-08-27', 0, 1),
-- ('Daniel', 'M.', '1999-07-12', 1, 2),
-- ('Sophia', 'N.', '2001-04-05', 0, 2),
-- ('Christopher', 'O.', '2000-02-28', 1, 1),
-- ('Ava', 'P.', '1999-09-15', 0, 2),
-- ('Matthew', 'Q.', '2001-11-23', 1, 1),
-- ('Mia', 'R.', '2000-12-07', 0, 2),
-- ('Andrew', 'S.', '1999-05-30', 1, 1),
-- ('Charlotte', 'T.', '2001-07-14', 0, 2);

------------------ MANY TO MANY


CREATE TABLE Students
(
    Id        INT PRIMARY KEY IDENTITY,
    FirstName NVARCHAR(747) NOT NULL,
    MiddleName NVARCHAR(100) NOT NULL,
    BirthDate DATE,
    Gender BIT,
)


CREATE TABLE Groups
(
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(60) NOT NULL,
    ClassNumber TINYINT
)

ALTER TABLE Groups
ALTER COLUMN ClassNumber INT

CREATE TABLE StudentsGroups
(
    StudentId INT,
    GroupId INT,
    CONSTRAINT FK_StudentsGroups_StudentId FOREIGN KEY(StudentId) REFERENCES Students(Id),
    CONSTRAINT FK_StudentsGroups_GroupId FOREIGN KEY(GroupId) REFERENCES Groups(Id)
)



-- INSERT INTO Students (FirstName, MiddleName, BirthDate, Gender)
-- VALUES
-- ('James', 'A.', '2000-05-15', 1),
-- ('Mary', 'B.', '2001-03-22', 0),
-- ('John', 'C.', '1999-11-08', 1),
-- ('Patricia', 'D.', '2000-07-30', 0),
-- ('Robert', 'E.', '2001-01-14', 1),
-- ('Jennifer', 'F.', '2000-09-05', 0),
-- ('Michael', 'G.', '1999-12-18', 1),
-- ('Linda', 'H.', '2001-02-25', 0),
-- ('William', 'I.', '2000-04-11', 1),
-- ('Elizabeth', 'J.', '1999-10-03', 0),
-- ('David', 'K.', '2001-06-19', 1),
-- ('Barbara', 'L.', '2000-08-27', 0),
-- ('Richard', 'M.', '1999-07-12', 1),
-- ('Susan', 'N.', '2001-04-05', 0),
-- ('Joseph', 'O.', '2000-02-28', 1),
-- ('Jessica', 'P.', '1999-09-15', 0),
-- ('Thomas', 'Q.', '2001-11-23', 1),
-- ('Sarah', 'R.', '2000-12-07', 0),
-- ('Charles', 'S.', '1999-05-30', 1),
-- ('Karen', 'T.', '2001-07-14', 0);


INSERT INTO Groups (Name, ClassNumber)
VALUES
('Computer Science A', 101),
('Mathematics B', 102),
('Physics C', 103),
('Chemistry D', 104),
('Biology E', 105),
('Literature F', 201),
('History G', 202),
('Art H', 203),
('Music I', 204),
('Economics J', 205),
('Engineering K', 301),
('Architecture L', 302),
('Psychology M', 303),
('Sociology N', 304),
('Political Science O', 305),
('Business P', 401),
('Law Q', 402),
('Medicine R', 403),
('Philosophy S', 404),
('Linguistics T', 405);


-- INSERT INTO StudentsGroups
-- VALUES (2, 18),
--        (2, 19)


-- INSERT INTO StudentsGroups
-- VALUES (20, 13)

SELECT S.FirstName, G.Name, G.ClassNumber
FROM StudentsGroups AS SG
JOIN Groups AS G ON G.Id = SG.GroupId
JOIN Students AS S on S.Id = SG.StudentId

CREATE TABLE Countries
(
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(32)
)

CREATE TABLE Users
(
    Id INT PRIMARY KEY IDENTITY,
    FullName NVARCHAR(100),
    CountryId INT FOREIGN KEY REFERENCES Countries(Id),
    [File] VARBINARY(1000),
    Extension CHAR(3)
)