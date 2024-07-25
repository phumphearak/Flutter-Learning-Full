import 'Teacher.dart';

void main() {
  var teacher = Teacher('Sok', '21', 'IT', 455);

  // teacher.name = 'Sok';
  // teacher.age = '21';
  // teacher.subject = 'IT';
  // teacher.sallary = 560;

  print('Your Name:${teacher.name}');
  print('Age:${teacher.age}');
  print('Subjec: ${teacher.subject}');
  print('Sallary: ${teacher.sallary}');
}
