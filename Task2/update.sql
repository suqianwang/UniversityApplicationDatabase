
/* add another column to relation City */
ALTER TABLE City
ADD state CHAR(10);


SELECT * FROM City;
/* update city with their corresponding states */
UPDATE City
SET state = 'CA'
WHERE name = 'Pasadena' OR name = 'Berkeley';

UPDATE City
SET state = 'PA'
WHERE name = 'Pittsburgh';

UPDATE City
SET state = 'GA'
WHERE name = 'Atlanta';

UPDATE City
SET state = 'NJ'
WHERE name = 'Princeton';

UPDATE City
SET state = 'TX'
WHERE name = 'Austin';
SELECT * FROM City;


/* update GPA requirement by adding 0.2 points if the GPA is lower than 3.8 */
SELECT * FROM Department;
UPDATE Department
SET GPA = GPA + 0.2
WHERE GPA < 3.8;
SELECT * FROM Department;


SELECT * FROM Professor;
/* delete tuples from professor whose research interest is control or computer system*/
DELETE FROM Professor
WHERE Professor.research = 'control' OR Professor.research = 'computer system';
SELECT * FROM Professor;


SELECT * FROM University;
/* delete universities whose application deadline is before 2018-12-15 */
DELETE FROM University
WHERE University.code IN (SELECT Department.schoolCode
							FROM Department
							WHERE University.code = Department.schoolCode AND Department.deadline < '2018-12-15');
SELECT * FROM University;



/* insert company and its corresponding location into relation company */
INSERT INTO Company
VALUES 
('Netflix', 'CA'),
('Intel', 'CA'),
('Nvidia', 'CA'),
('Google', 'CA'),
('AT&T', 'TX');
SELECT * FROM Company;


CREATE TABLE CACompany (
	Company CHAR(100) PRIMARY KEY
);

SELECT * FROM CACompany;
/* insert all california company to relation CACompany */
INSERT INTO CACompany
(SELECT name
FROM Company
WHERE location = 'CA');
SELECT * FROM CACompany;
