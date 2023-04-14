import 'package:injectable/injectable.dart';
import 'package:realtime_peoples/core/hive/hive_boxes.dart';

import '../../models/employee.dart';

abstract class EmployeeBoxRepository {
  Future<List<Employee>> fetchEmployees();
  Future<bool> deleteEmployee(int id);
  Future<bool> saveEmployee(Employee employee);
}

@Injectable(as: EmployeeBoxRepository)
class EmployeeBoxRepositoryImpl implements EmployeeBoxRepository {
  @override
  Future<bool> deleteEmployee(int id) async {
    var box = HiveBoxes.employeeBox();
    await box.delete(id);
    return true;
  }

  @override
  Future<List<Employee>> fetchEmployees() async {
    var box = HiveBoxes.employeeBox();
    var data = box.values.toList();
    return data;
  }

  @override
  Future<bool> saveEmployee(Employee employee) async {
    var box = HiveBoxes.employeeBox();
    await box.add(employee);
    return true;
  }
}
