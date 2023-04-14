import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:realtime_peoples/core/failure/failure.dart';
import 'package:realtime_peoples/data/datasources/hivedb/employee_box.dart';
import 'package:realtime_peoples/data/models/employee.dart';
import 'package:realtime_peoples/domain/repositories/employee_repository.dart';

@Injectable(as: EmployeeRepository)
class EmployeeRepositoryImpl implements EmployeeRepository {
  final EmployeeBoxRepository employeeBoxRepository;

  EmployeeRepositoryImpl(this.employeeBoxRepository);

  @override
  Future<Either<Failure, bool>> deleteEmployee(int id) async {
    try {
      var res = await employeeBoxRepository.deleteEmployee(id);
      return Right(res);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Employee>>> fetchEmployees() async {
    try {
      var res = await employeeBoxRepository.fetchEmployees();
      return Right(res);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> saveEmployee(Employee employee) async {
    try {
      var res = await employeeBoxRepository.saveEmployee(employee);
      return Right(res);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
