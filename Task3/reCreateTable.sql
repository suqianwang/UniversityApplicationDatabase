
# add attribute-based check
CREATE TABLE IF NOT EXISTS University(
	code INT PRIMARY KEY,
	name CHAR(100) UNIQUE,
	rank INT,
	CONSTRAINT attribute_based_check_1
		CHECK (rank <= 50)
);

# add tuple-based check
CREATE TABLE IF NOT EXISTS Department(
	schoolCode INT,
	name CHAR(100),
	GPA REAL,
	GRE INT,
	TOEFL INT,
	Rec INT,
	tuition INT,
	deadline DATE,
	PRIMARY KEY(schoolCode, name),
	INDEX (name),
	CONSTRAINT tuple_based_check_1
		CHECK(deadline >= '2018-12-01' AND TOEFL <= 95)
);

# add attribute-based check
CREATE TABLE IF NOT EXISTS Major(
	schoolCode INT,
	abbr CHAR(30),
	rank INT,
	PRIMARY KEY(schoolCode, abbr),
	CONSTRAINT attribute_based_check_1
		 CHECK (rank <= 20)
);

CREATE TABLE IF NOT EXISTS Professor(
	name CHAR(20) PRIMARY KEY,
	email CHAR(100),
	research CHAR(100)
);

CREATE TABLE IF NOT EXISTS City(
	name CHAR(20) PRIMARY KEY,
	size CHAR(10)
);

CREATE TABLE IF NOT EXISTS Company(
	name CHAR(50) PRIMARY KEY,
	location CHAR(20)
);

# add referential integrity constraint
CREATE TABLE IF NOT EXISTS Owns(
	code INT,
	departmentName CHAR(100),
	PRIMARY KEY(code, departmentName),
	FOREIGN KEY (code) REFERENCES University(code)
	ON UPDATE CASCADE
);

# add referential integrity constraint
CREATE TABLE IF NOT EXISTS Offer(
	departmentName CHAR(100) REFERENCES Department(name),
	abbr CHAR(30),
	code INT,
	PRIMARY KEY(departmentName, abbr, code),

	FOREIGN KEY (departmentName) REFERENCES Department(name)
	ON UPDATE CASCADE
);

# add referential integrity constraint
CREATE TABLE IF NOT EXISTS Works_for(
	departmentName CHAR(100),
	professorName CHAR(20),
	PRIMARY KEY(departmentName, professorName),

	FOREIGN KEY (departmentName) REFERENCES Department(name)
	ON UPDATE CASCADE,

	FOREIGN KEY (professorName) REFERENCES Professor(name)
	ON UPDATE CASCADE
);

# add tuple-based check
CREATE TABLE IF NOT EXISTS Located_at(
	code INT,
	cityName CHAR(20),
	PRIMARY KEY(code, cityName),
	CONSTRAINT tuple_based_check_2
		CHECK (code > 0000 AND code < 9999 AND cityName <> 'AZ')
);

# add referential integrity constraint
CREATE TABLE Has(
	cityName CHAR(20),
	companyName CHAR(50),
	PRIMARY KEY(cityName, companyName),

	FOREIGN KEY (cityName) REFERENCES City(name)
	ON UPDATE CASCADE,

	FOREIGN KEY (companyName) REFERENCES Company(name)
	ON UPDATE CASCADE
);
