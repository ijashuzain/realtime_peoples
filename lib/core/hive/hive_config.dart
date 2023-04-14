import 'dart:developer';

import 'package:hive_flutter/adapters.dart';
import 'package:realtime_peoples/core/hive/hive_constants.dart';
import 'package:realtime_peoples/data/models/employee.dart';

class HiveConfig {
  Future<void> _registerAdapters() async {
    Hive.registerAdapter(EmployeeAdapter());
  }

  Future<void> openBoxes() async {
    await _registerAdapters();
    await Hive.openBox<Employee>(BoxName.employee);
    log("Hive Boxes => opened");
  }
}