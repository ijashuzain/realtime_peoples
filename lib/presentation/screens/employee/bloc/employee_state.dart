part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  factory EmployeeState({
    required List<Employee> currentEmployees,
    required List<Employee> previousEmployees,
    required bool fetchingEmployees,
    required bool savingEmployees,
    required String errorMessage,
  }) = _EmployeeState;

  factory EmployeeState.initial() => EmployeeState(previousEmployees: [], currentEmployees: [], fetchingEmployees: false, errorMessage: "", savingEmployees: false);
}
