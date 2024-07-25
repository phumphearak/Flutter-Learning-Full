class Person {
  //properties or fields or member varibles
  String? name; // Null
  String? major; //Null
  int age = 0; // Not null

  //the methods
  void show() {
    print('nmae: $name');
    print('major: $major');
    print('Age: $age');
  }
}

//the creating an instance / object of class
void main() {
  Person p = new Person();

  //calling the field ans assign values
  //object Name.fieldName = values

  p.name = 'Heng heng';
  p.major = 'IT';
  p.age = 24;

  p.show();
}
