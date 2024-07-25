class Student {
  String? Name;
  String? Phone;
  int? RollNo;

  void setName(String name) => this.Name = name;
  void setPhone(String phone) => this.Phone = phone;
  void setRollNo(int number) => this.RollNo = number;

  String getName() {
    return Name!;
  }

  String getPhone() {
    return Phone!;
  }

  int getRollNo() {
    return RollNo!;
  }
}
