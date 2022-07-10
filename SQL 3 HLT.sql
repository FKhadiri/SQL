-- TASK1 :

-- 1. Obtain a list of applications where the CourseID is unknown
SELECT applicationID,CourseAplliedFor
FROM uni.application
 Where CourseAppliedFor is NULL
-- 2. Obtain a list of students where their CourseID is not unknown
SELECT StudentID,Forename,Surname,CourseAppliedFor
 FROM uni.student
 WHERE CourseID IS NULL;
-- 3. Obtain a list of students whom were born in the month of June 2002
SELECT StudentID,Forename,Surename
 FROM uni.student
WHERE MONTH(DateOfBirth)=6
-- 4. Obtain a list of applications where CourseID is unknown and the applications where made between 01/04/2020 and 31/07/2020
SELECT applicationID,DateOfApplication
FROM uni.application
WHERE CourseAppliedFor is Null AND DateOfApplication BETWEEN '2020-04-01' AND '2020-07-31';

-- TASK2 :

-- 1. Obtain the number of modules which are assigned to each course
SELECT count(ModuleID),subject
 FROM uni.module
 Group BY subject

-- 2. Retrieve Information on the number of successful applications per course
SELECT CourseName,accepted ,count(accepted)
FROM uni.application AS a
Join uni.course AS c
ON c.CourseID=a.CourseAppliedFor
where accepted=1
group by CourseName

-- 3. Find the average Membership Fee of Student Clubs by the ID of the Staff member (Lecturer) supervising it
SELECT avg(MembershipFee),SupervisingStaff,clubName
 FROM uni.club
 group by SupervisingStaff

-- 4. Find the Sum total of Joining Fees for all active clubs by Staff Member supervising them
SELECT sum(MembershipFee),SupervisingStaff,ClubName
 FROM uni.club
 where active=1
 group by SupervisingStaff

-- TASK3:

-- 1. Obtain a list of all modules and the names of any courses they may be taught (include modules without courses)
SELECT moduleName,CourseName,m.CourseID
 FROM uni.module as m
 left JOIN uni.course as c
 on m.CourseID=c.CourseID
where m.CourseID is Null or m.CourseID is not null

-- 2. Obtain a list of students along with any related application numbers if they have them
SELECT s.Forenames,s.Surname,a.applicationID
 FROM uni.student as s
left join uni.application as a
on s.StudentID=a.StudentID
where a.applicationID is not null

-- 3. Obtain the Class ID, Class Date and Feedback score of the latest class scheduled for each Class ID
SELECT ClassID,max(CDate),FeedbackScore
 FROM uni.schedule 
 group by ClassID
 
