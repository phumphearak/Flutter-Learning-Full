class Student {
  String? _Name;
  String? _Gender;
  int? _RollNo;

  set Name(String name) => _Name = name;
  set Gender(String gender) => _Gender = gender;
  set RollNo(int number) => _RollNo = number;

  String get Name {
    return _Name!;
  }

  String get Gender {
    return _Gender!;
  }

  int get RollNo {
    return _RollNo!;
  }
}
