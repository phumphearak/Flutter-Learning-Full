class Teacher {
  String? name;
  String? age;
  String? subject;
  double? sallary;
  //constructor
  Teacher(String name, [String? age, String? subject, double? sallary]) {
    this.name = name;
    this.age = age;
    this.subject = subject;
    this.sallary = sallary;
  }

  Teacher.Add(this.name, this.age);
  Teacher.AddSubject(this.name, this.subject);
  Teacher.AddSallary(this.name, this.sallary);
}
