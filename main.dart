import 'getter_Setter.dart';

void main(List<String> args) {
  Student student=Student();
  print(student.get_name);
  student.editName="Swift";
  print(student.get_name);
}