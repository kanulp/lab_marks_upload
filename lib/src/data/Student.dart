class Student {
  int id;
  String name;
  String email;
  double marks;

  Student(int id,String name,String email,double marks){
    this.id=id;
    this.name=name;
    this.email=email;
    this.marks=marks;
  }

	int getId() {
		return this.id;
	}

	void setId(int id) {
		this.id = id;
	}

	String getName() {
		return this.name;
	}

	void setName(String name) {
		this.name = name;
	}

	String getEmail() {
		return this.email;
	}

	void setEmail(String email) {
		this.email = email;
	}

	double getMarks() {
		return this.marks;
	}

	void setMarks(double marks) {
		this.marks = marks;
	}



}