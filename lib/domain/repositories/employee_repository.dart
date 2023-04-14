import 'package:dartz/dartz.dart';
import 'package:realtime_peoples/data/models/employee.dart';

import '../../core/failure/failure.dart';

abstract class EmployeeRepository {
  Future<Either<Failure,List<Employee>>> fetchEmployees();
  Future<Either<Failure,bool>> deleteEmployee(int id);
  Future<Either<Failure,bool>> saveEmployee(Employee employee);
}