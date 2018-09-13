CREATE TABLE IF NOT EXISTS University(
	code INT PRIMARY KEY,
	name CHAR(100),
	rank INT
);

CREATE TABLE IF NOT EXISTS Department(
	schoolCode INT,
	name CHAR(100),
	GPA REAL,
	GRE INT,
	TOEFL INT,
	Rec INT,
	tuition INT,
	deadline DATE,
	PRIMARY KEY(schoolCode, name)
);

CREATE TABLE IF NOT EXISTS Major(
	schoolCode INT,
	abbr CHAR(30),
	rank INT,
	PRIMARY KEY(schoolCode, abbr)
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

CREATE TABLE IF NOT EXISTS Owns(
	code INT,
	departmentName CHAR(100),
	PRIMARY KEY(code, departmentName)
);

CREATE TABLE IF NOT EXISTS Offer(
	departmentName CHAR(100),
	abbr CHAR(30),
	code INT,
	PRIMARY KEY(departmentName, abbr, code)
);

CREATE TABLE IF NOT EXISTS Works_for(
	departmentName CHAR(100),
	professorName CHAR(20),
	PRIMARY KEY(departmentName, professorName)
);

CREATE TABLE IF NOT EXISTS Located_at(
	code INT,
	cityName CHAR(20),
	PRIMARY KEY(code, cityName)
);

CREATE TABLE Has(
	cityName CHAR(20),
	companyName CHAR(50),
	PRIMARY KEY(cityName, companyName)
);

