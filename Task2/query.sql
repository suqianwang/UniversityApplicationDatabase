/* Find CSCE major Universities and order the output list by major ranking */
SELECT University.name AS UNIVERSITY, Major.rank AS RANK
FROM University, Major
WHERE University.code = Major.schoolCode  AND Major.abbr LIKE '%CS%'
ORDER BY Major.rank;

/* Find the Universities that located at California */
SELECT DISTINCT University.name AS UNIVERSITY, Located_at.cityName AS CITY
FROM University, City, Located_at
WHERE University.code = Located_at.code AND Located_at.cityName = 'CA';

/* Find the professors' info who research in artificial intelligence or database */
SELECT DISTINCT name AS PROFESSOR, email AS EMAIL, research AS RESEARCH_INTEREST
FROM Professor
WHERE research = 'Artificial Intelligence' OR research LIKE 'Database%';

/* Find the university's CS major admission requirement and ordered by major ranking and University ranking */
SELECT University.code, University.name AS University_name, University.rank AS University_rank, Major.abbr AS Major, Major.rank AS Major_rank, Department.GPA, Department.GRE, Department.TOEFL, Department.rec, Department.deadline
FROM University JOIN Department ON 
	University.code = Department.schoolCode JOIN Major ON
	Department.schoolCode = Major.schoolCode
Order BY Major.rank, University.rank;

/* Find out the companies that in the same city with the university and order by university rank */
SELECT DISTINCT University.code, University.name AS University, University.rank, Company.location, Company.name AS Company
FROM University JOIN Located_at ON University.code = Located_at.code
	JOIN Company ON Located_at.cityName = Company.location
ORDER BY University.rank;

/* Find the university that has expensive tuition (>30000) and high GRE requirement (>=325) */
(SELECT Department.schoolcode, Department.name
FROM Department
WHERE Department.tuition > 30000)
UNION 
(SELECT Department.schoolcode, Department.name
FROM Department
WHERE Department.GRE >= 325);

/* group the universities by their application dealine and show how many university have the same deadline */
SELECT COUNT(University.code), University.name, Department.name, Department.deadline
FROM University, Department
WHERE University.code = Department.schoolCode
GROUP BY Department.deadline;

/* Find University have GPA lower than 3.8 and GRE lower than 326 and ordering the output by deadline */
SELECT *
FROM Department
WHERE GPA < 3.8 AND GRE <= 325
ORDER BY deadline;

/* Find the number of company in California */
SELECT COUNT(DISTINCT name)
FROM Company
WHERE location = 'CA';

/* Find for each university department, the number of major they offerred */
SELECT Owns.code, Owns.departmentName, COUNT(Offer.departmentName) AS NumberOfferMajor
FROM Owns, Offer
WHERE Owns.code = Offer.code
GROUP BY Owns.code;







