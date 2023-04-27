import 'dart:ffi';

import 'package:basic_dart/Manager.dart';
import 'package:basic_dart/engineer.dart';
import 'package:basic_dart/officer.dart';
import 'package:basic_dart/staff.dart';
import 'package:basic_dart/worker.dart';
import 'dart:io';

void main(List<String> arguments) {
  ManagerOfficer managerOfficer = ManagerOfficer([]);
  while (true) {
    print('Nhập: ');
    print('1: Thêm mới cán bộ');
    print('2: Tìm kiếm theo họ tên');
    print('3: Hiện thông tin về danh sách cán bộ');
    print('4: Thoát chương trình');
    int x = int.parse(stdin.readLineSync()!);

    switch (x) {
      case 1:
        {
          print('nhập a: để thêm kĩ sư');
          print('nhập b: để thêm công nhân');
          print('nhập c: để thêm nhân viên');
          String tmp = stdin.readLineSync()!;
          switch (tmp) {
            case 'a':
              {
                print('Nhập tên cán bộ: ');
                String name = stdin.readLineSync()!;
                print('Nhập tuổi: ');
                int age = int.parse(stdin.readLineSync()!);
                print('Nhập giới tính:');
                String gender = stdin.readLineSync()!;
                print('Nhập địa chỉ cán bộ: ');
                String andress = stdin.readLineSync()!;
                print('Nhập ngành đào tạo: ');
                String branch = stdin.readLineSync()!;
                Officer newEngineer =
                    Engineer(name, age, gender, andress, branch);
                managerOfficer.addOfficer(newEngineer);

                break;
              }
            case 'b':
              {
                print('Nhập tên cán bộ: ');
                String name = stdin.readLineSync()!;
                print('Nhập tuổi: ');
                int age = int.parse(stdin.readLineSync()!);
                print('Nhập giới tính:');
                String gender = stdin.readLineSync()!;
                print('Nhập địa chỉ cán bộ: ');
                String andress = stdin.readLineSync()!;
                print('Nhập lv: ');
                int rank = int.parse(stdin.readLineSync()!);
                Officer newWorker = Worker(name, age, gender, andress, rank);
                managerOfficer.addOfficer(newWorker);

                break;
              }
            case 'c':
              {
                print('Nhập tên cán bộ: ');
                String name = stdin.readLineSync()!;
                print('Nhập tuổi: ');
                int age = int.parse(stdin.readLineSync()!);
                print('Nhập giới tính:');
                String gender = stdin.readLineSync()!;
                print('Nhập địa chỉ cán bộ: ');
                String andress = stdin.readLineSync()!;
                print('Nhập công việc: ');
                String job = stdin.readLineSync()!;
                Officer newStaff = Staff(name, age, gender, andress, job);
                managerOfficer.addOfficer(newStaff);

                break;
              }
            default:
              {
                print("Invalid");
                break;
              }
          }
          break;
        }
      case 2:
        {
          print('Nhập tên cán bộ cần tìm: ');
          String tmp = stdin.readLineSync()!;
          managerOfficer.searchOfficerByName(tmp).forEach((element) {
            print(element);
          });
          break;
        }
      case 3:
        {
          managerOfficer.showListOfficer();
          break;
        }
      case 4:
        return;
      default:
        {
          print('invalid');
          break;
        }
    }
  }
}
