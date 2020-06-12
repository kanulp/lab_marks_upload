class Subject {
  String subject;
  String semester;

  Subject(String subject,String semester){
    this.semester=semester;
    this.subject=subject;
  }

	String getSubject() {
		return this.subject;
	}

	void setSubject(String subject) {
		this.subject = subject;
	}

	String getSemester() {
		return this.semester;
	}

	void setSemester(String semester) {
		this.semester = semester;
	}


}