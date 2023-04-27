class Officer {
  String name;
  int age;
  String gender;
  String andress;
  Officer(this.name, this.age, this.gender, this.andress);
  String get getName => name;
  int get getAge => age;
  String get getGender => gender;
  String get getAndress => andress;
  set setName(String tmp) {
    name = tmp;
  }

  set setAge(int tmp) {
    age = tmp;
  }

  set setGender(String tmp) {
    gender = tmp;
  }

  set setAndress(String tmp) {
    andress = tmp;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Name: $name\nAge: $age\nGender: $gender\nAndress: $andress";
  }
}
