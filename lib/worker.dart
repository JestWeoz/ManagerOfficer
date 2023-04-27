import 'package:basic_dart/officer.dart';

class Worker extends Officer {
  int rank;
  Worker(String name, int age, String gender, String andress, this.rank)
      : super(name, age, gender, andress);
  int get getRank => rank;
  set setRank(int tmp) {
    rank = tmp;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Name: $name\nAge: $age\nGender: $gender\nAndress: $andress\n\rank: $rank";
  }
}
