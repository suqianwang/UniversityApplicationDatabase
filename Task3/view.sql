CREATE VIEW University_Admission_Requirement AS
	SELECT University.name AS University_name, University.rank AS University_rank, Major.abbr AS Major, Major.rank AS Major_rank, Department.GPA, Department.GRE, Department.TOEFL, Department.rec, Department.deadline
	FROM University JOIN Department ON 
	University.code = Department.schoolCode JOIN Major ON
	Department.schoolCode = Major.schoolCode
	Order BY Major.rank, University.rank;
