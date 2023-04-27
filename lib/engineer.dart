import 'package:basic_dart/officer.dart';

class Engineer extends Officer {
  String branch;
  Engineer(String name, int age, String gender, String andress, this.branch)
      : super(name, age, gender, andress);
  String get setBranch => branch;
  set setBranch(String tmp) {
    branch = tmp;
  }
  @override
  String toString() {
    // TODO: implement toString
    return "Name: $name\nAge: $age\nGender: $gender\nAndress: $andress\nBranch: $branch";
  }
}
