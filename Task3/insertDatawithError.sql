INSERT INTO University (code, name, rank)
VALUES 
('4034', 'California Institute of Technology', '4'),
('2074', 'Carnegie Mellon University', '19'),
('5248', 'Georgia Institute of Technology', '24'),
('4833', 'University of California, Berkely', '14'),
('2672', 'Princeton University', '6'),
('6882', 'University of Texas at Austin', '22'),
('6003', 'Texas A&M University', '49'),
('1836', 'University of Illinois at Urbana-Champaign', '25'),
('5156', 'Duke University', '13');
# test attribute-based check
INSERT INTO University (code, name, rank)
VALUES
('3033', 'Boston College', '73');

INSERT INTO Department (schoolCode, name, GPA, GRE, TOEFL, Rec, tuition, deadline)
VALUES
('4034', 'computing and mathematical sciences', '3.5', '325', '0', '3', '48111','2018-12-15'),
('5248', 'computational science and engineering', '3.2', '324', '90', '3', '13200','2019-02-01'),
('4833', 'electrical engineering and computer science', '3.3', '323', '90', '3', '29272','2018-12-17'),
('2672', 'computer science', '3.5', '328', '0', '3', '49450','2018-12-15'),
('6882', 'computer science', '3.86', '325', '79', '3', '11683','2018-12-15');
 # test tuple-based check
INSERT INTO Department (schoolCode, name, GPA, GRE, TOEFL, Rec, tuition, deadline)
VALUES
('4704', 'computer science', '3.82', '330', '110', '3', '54015', '2018-12-04');
INSERT INTO Department (schoolCode, name, GPA, GRE, TOEFL, Rec, tuition, deadline)
VALUES
('2074', 'computer science', '0', '322', '0', '3', '47300','2018-11-11');

INSERT INTO Major (schoolCode, abbr, rank)
VALUES
('4034', 'CS', '10'),
('2074', 'CSD', '3'),
('5248', 'CSE', '9'),
('4833', 'EECS', '4'),
('2672', 'CS', '8'),
('6882', 'CS', '13');
# test attribute-based check
INSERT INTO Major (schoolCode, abbr, rank)
VALUES
('6003', 'CS', '43');

INSERT INTO Professor (name, email, research)
VALUES
('Yaser S. Abu-Mostafa', 'yaser@caltech.edu', 'machine learning'),
('Richard M. Murray', 'murray@cds.caltech.edu', 'control'),
('David Anderson', 'dga@cs.cmu.edu', 'computer systems'),
('Stephen Brookes', 'brookes@cs.cmu,edu', 'Theory'),
('Ashok Goel', 'goel@cc.gatech.edu', 'Artificial Intelligence'),
('Mark Borodovsky', 'borodovsky@gatech.edu', 'Machine Learning'),
('Ravindra N. Bhatt', 'jegonzal@eecs.berkeley.edu', 'Database Management Systems'),
('Michael Lustig', 'mlustig@eecs.berkeley.edu', 'Database Management Systems'),
('David August', 'august@cs.princeton.edu', 'Programming Languages'),
('Mark Braverman', 'mbraverman@cs.princeton.edu', 'Machine Learning'),
('Dana Ballard', 'dana@cs.utexas.edu', 'Artificial Intelligence'),
('Kristen Grauman', 'grauman@cs.utexas.edu', 'Artificial Intelligence');

INSERT INTO City (name, size)
VALUES
('Pasadena', 'large'),
('Pittsburgh', 'large'),
('Atlanta', 'medium'),
('Berkeley', 'large'),
('Princeton', 'small'),
('Austin', 'medium'),
('San Francisco', 'large'),
('San Diego', 'large'),
('Dallas', 'large'),
('Seattle', 'large');

INSERT INTO Company (name, location)
VALUES
('Brianjolt', 'CA'),
('Guidance Software', 'CA'),
('Duolingo', 'PA'),
('Argo AI', 'PA'),
('Microsoft', 'GA'),
('Infor', 'GA'),
('Meyer Sound', 'CA'),
('Oasis Labs', 'CA'),
('Bloomberg L.P.', 'NJ'),
('InformedDNA', 'NJ'),
('Apple', 'TX'),
('HP', 'TX'),
('IBM', 'NY'),
('Chase', 'NY');

INSERT INTO Owns(code, departmentName)
VALUES
('4034', 'computing and mathematical sciences'),
('2074', 'computer science'),
('5248', 'computational science and engineering'),
('4833', 'electrical engineering and computer science'),
('2672', 'computer science'),
('6882', 'computer science');
# add to test foreign key constraint
INSERT INTO Owns(code, departmentName) 
VALUES ('5555', 'computer science');

INSERT INTO Offer(code, abbr, departmentName)
VALUES
('4034', 'CS', 'computing and mathematical sciences'),
('2074', 'CSD', 'computer science'),
('5248', 'CSE', 'computational science and engineering'),
('4833', 'EECS', 'electrical engineering and computer science'),
('2672', 'CS', 'computer science'),
('6882', 'CS', 'computer science');
# add to test foreign key constraint
INSERT INTO Offer(code, abbr, departmentName) 
VALUES ('0000', 'CS', 'electrical engineering');

INSERT INTO Works_for(departmentName, professorName)
VALUES
('computing and mathematical sciences', 'Yaser S. Abu-Mostafa'),
('computing and mathematical sciences', 'Richard M. Murray'),
('computer science', 'David Anderson'),
('computer science', 'Stephen Brookes'),
('computational science and engineering', 'Ashok Goel'),
('computational science and engineering', 'Mark Borodovsky'),
('electrical engineering and computer science', 'Ravindra N. Bhatt'),
('electrical engineering and computer science', 'Michael Lustig'),
('computer science', 'David August'),
('computer science', 'Mark Braverman'),
('computer science', 'Dana Ballard'),
('computer science', 'Kristen Grauman');
# add to test foreign key constraint
INSERT INTO Works_for(departmentName, professorName) 
VALUES ('electrical engineering', 'Krishna Narayanan');

INSERT INTO Located_at(code, cityName)
VALUES
('4034', 'CA'),
('2074', 'PA'),
('5248', 'GA'),
('4833', 'CA'),
('2672', 'NJ'),
('6882', 'TX');
# test tuple-based check
INSERT INTO Located_at(code, cityName)
VALUES
('0000', 'CA');
INSERT INTO Located_at(code, cityName)
VALUES
('4444', 'AZ');

INSERT INTO Has(companyName, cityName)
VALUES
('Brianjolt', 'Pasadena'),
('Guidance Software', 'Pasadena'),
('Duolingo', 'Pittsburgh'),
('Argo AI', 'Pittsburgh'),
('Microsoft', 'Atlanta'),
('Infor', 'Atlanta'),
('Meyer Sound', 'Berkeley'),
('Oasis Labs', 'Berkeley'),
('Bloomberg L.P.', 'Princeton'),
('InformedDNA', 'Princeton'),
('Apple', 'Austin'),
('HP', 'Austin');
# add to test foreign key constraint
INSERT INTO Has(companyName, cityName)
VALUES
('ABM', 'New York'),
('Verizon', 'New York');

