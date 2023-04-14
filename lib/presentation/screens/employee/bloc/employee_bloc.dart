import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:realtime_peoples/core/globals/datetime_convertions.dart';

import '../../../../data/models/employee.dart';
import '../../../../domain/repositories/employee_repository.dart';

part 'employee_event.dart';
part 'employee_state.dart';
part 'employee_bloc.freezed.dart';

@injectable
class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  //
  final EmployeeRepository employeeRepository;
  //
  EmployeeBloc(this.employeeRepository) : super(EmployeeState.initial()) {
    on<_FetchEmployees>(_fetchEmployees);
    on<_SaveEmployee>(_saveEmployee);
    on<_DeleteEmployee>(_deleteEmployee);
  }

  _fetchEmployees(_FetchEmployees event, Emitter<EmployeeState> emit) async {
    emit(EmployeeState.initial().copyWith(fetchingEmployees: true));
    var res = await employeeRepository.fetchEmployees();
    res.fold((failure) {
      emit(state.copyWith(fetchingEmployees: false, errorMessage: failure.message));
    }, (success) {
      emit(state.copyWith(
        fetchingEmployees: false,
        currentEmployees: getCurrentEmployees(success),
        previousEmployees: getPreviousEmployees(success),
      ));
    });
  }

  _deleteEmployee(_DeleteEmployee event, Emitter<EmployeeState> emit) {}

  _saveEmployee(_SaveEmployee event, Emitter<EmployeeState> emit) async {
    emit(EmployeeState.initial().copyWith(savingEmployees: true));
    var res = await employeeRepository.saveEmployee(event.employee);
    res.fold((failure) {
      emit(state.copyWith(savingEmployees: false, errorMessage: failure.message));
    }, (success) {
      emit(state.copyWith(
        savingEmployees: false,
      ));
    });
  }

  //Function for getting list of current employees
  //based on date
  List<Employee> getCurrentEmployees(List<Employee> employees) {
    DateTime now = DateTime.now();
    List<Employee> currentEmployees = [];
    for (Employee employee in employees) {
      if (parseStringToDateTime(employee.toDate).isAfter(now)) {
        currentEmployees.add(employee);
      }
    }
    return currentEmployees;
  }

  //Function for getting list of previous employees
  // based on date
  List<Employee> getPreviousEmployees(List<Employee> employees) {
    DateTime now = DateTime.now();
    List<Employee> previousEmployees = [];
    for (Employee employee in employees) {
      if (parseStringToDateTime(employee.toDate).isBefore(now)) {
        previousEmployees.add(employee);
      }
    }
    return previousEmployees;
  }
}
