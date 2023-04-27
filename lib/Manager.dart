import 'package:basic_dart/officer.dart';

class ManagerOfficer {
  List<Officer> officers;
  ManagerOfficer(this.officers);
  void addOfficer(Officer officer) {
    this.officers.add(officer);
  }

  // hàm tìm kiếm nhân viên theo 1 thành phần trong tên
  List<Officer> searchOfficerByName(String name) {
    List<Officer> tmp = [];
    for (var i = 0; i < officers.length; i++) {
      if (officers[i].name.contains(name)) {
        tmp.add(officers[i]);
      }
    }
    return tmp;
  }

  void showListOfficer() {
    for (var i = 0; i < this.officers.length; i++) {
      print('can bo thu ${i + 1}: ');
      print(officers[i]);
    }
  }
}
