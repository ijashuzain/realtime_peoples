import 'package:hive_flutter/hive_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_peoples/core/hive/hive_constants.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@HiveType(typeId: TypeId.employee)
@freezed
class Employee extends HiveObject with _$Employee {
  Employee._();

  factory Employee({
    @HiveField(0) required String name,
    @HiveField(1) required int designation,
    @HiveField(2) required String fromDate,
    @HiveField(3) required String toDate,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);
}
