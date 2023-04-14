import 'package:hive_flutter/adapters.dart';
import 'package:realtime_peoples/core/hive/hive_constants.dart';
import 'package:realtime_peoples/data/models/employee.dart';

class HiveBoxes {
  static Box<Employee> employeeBox() => Hive.box<Employee>(BoxName.employee);
}
