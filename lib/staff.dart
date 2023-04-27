import 'package:basic_dart/officer.dart';

class Staff extends Officer {
  String job;
  Staff(String name, int age, String gender, String andress, this.job)
      : super(name, age, gender, andress);
  String get getJob => job;
  set setJob(String tmp) {
    job = tmp;
  }
  @override
  String toString() {
    // TODO: implement toString
    return "Name: $name\nAge: $age\nGender: $gender\nAndress: $andress\nJob: $job";
  }
}
