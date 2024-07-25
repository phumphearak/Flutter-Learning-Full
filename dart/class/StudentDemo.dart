import 'Student.dart';

void main() {
  //create an instance of class
  Student st = new Student();
  st.RollNo = 1234;
  st.Name = 'Chorm Lymey';
  st.Gender = 'Female';

  print('ID :${st.RollNo}');
  print('My name is :${st.Name}');
  print('Gender :${st.Gender}');
}
