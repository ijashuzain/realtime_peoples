part of 'employee_bloc.dart';

@freezed
class EmployeeEvent with _$EmployeeEvent {
  factory EmployeeEvent.fetchEmployees() = _FetchEmployees;
  factory EmployeeEvent.deleteEmployee(int id) = _DeleteEmployee;
  factory EmployeeEvent.saveEmployee(Employee employee) = _SaveEmployee;
}
