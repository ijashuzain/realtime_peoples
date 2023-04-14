// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmployees,
    required TResult Function(int id) deleteEmployee,
    required TResult Function(Employee employee) saveEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmployees,
    TResult? Function(int id)? deleteEmployee,
    TResult? Function(Employee employee)? saveEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
    TResult Function(int id)? deleteEmployee,
    TResult Function(Employee employee)? saveEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmployees value) fetchEmployees,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_SaveEmployee value) saveEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmployees value)? fetchEmployees,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_SaveEmployee value)? saveEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmployees value)? fetchEmployees,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_SaveEmployee value)? saveEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEventCopyWith<$Res> {
  factory $EmployeeEventCopyWith(
          EmployeeEvent value, $Res Function(EmployeeEvent) then) =
      _$EmployeeEventCopyWithImpl<$Res, EmployeeEvent>;
}

/// @nodoc
class _$EmployeeEventCopyWithImpl<$Res, $Val extends EmployeeEvent>
    implements $EmployeeEventCopyWith<$Res> {
  _$EmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchEmployeesCopyWith<$Res> {
  factory _$$_FetchEmployeesCopyWith(
          _$_FetchEmployees value, $Res Function(_$_FetchEmployees) then) =
      __$$_FetchEmployeesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchEmployeesCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$_FetchEmployees>
    implements _$$_FetchEmployeesCopyWith<$Res> {
  __$$_FetchEmployeesCopyWithImpl(
      _$_FetchEmployees _value, $Res Function(_$_FetchEmployees) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchEmployees implements _FetchEmployees {
  _$_FetchEmployees();

  @override
  String toString() {
    return 'EmployeeEvent.fetchEmployees()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchEmployees);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmployees,
    required TResult Function(int id) deleteEmployee,
    required TResult Function(Employee employee) saveEmployee,
  }) {
    return fetchEmployees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmployees,
    TResult? Function(int id)? deleteEmployee,
    TResult? Function(Employee employee)? saveEmployee,
  }) {
    return fetchEmployees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
    TResult Function(int id)? deleteEmployee,
    TResult Function(Employee employee)? saveEmployee,
    required TResult orElse(),
  }) {
    if (fetchEmployees != null) {
      return fetchEmployees();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmployees value) fetchEmployees,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_SaveEmployee value) saveEmployee,
  }) {
    return fetchEmployees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmployees value)? fetchEmployees,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_SaveEmployee value)? saveEmployee,
  }) {
    return fetchEmployees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmployees value)? fetchEmployees,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_SaveEmployee value)? saveEmployee,
    required TResult orElse(),
  }) {
    if (fetchEmployees != null) {
      return fetchEmployees(this);
    }
    return orElse();
  }
}

abstract class _FetchEmployees implements EmployeeEvent {
  factory _FetchEmployees() = _$_FetchEmployees;
}

/// @nodoc
abstract class _$$_DeleteEmployeeCopyWith<$Res> {
  factory _$$_DeleteEmployeeCopyWith(
          _$_DeleteEmployee value, $Res Function(_$_DeleteEmployee) then) =
      __$$_DeleteEmployeeCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteEmployeeCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$_DeleteEmployee>
    implements _$$_DeleteEmployeeCopyWith<$Res> {
  __$$_DeleteEmployeeCopyWithImpl(
      _$_DeleteEmployee _value, $Res Function(_$_DeleteEmployee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteEmployee(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteEmployee implements _DeleteEmployee {
  _$_DeleteEmployee(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'EmployeeEvent.deleteEmployee(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteEmployee &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteEmployeeCopyWith<_$_DeleteEmployee> get copyWith =>
      __$$_DeleteEmployeeCopyWithImpl<_$_DeleteEmployee>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmployees,
    required TResult Function(int id) deleteEmployee,
    required TResult Function(Employee employee) saveEmployee,
  }) {
    return deleteEmployee(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmployees,
    TResult? Function(int id)? deleteEmployee,
    TResult? Function(Employee employee)? saveEmployee,
  }) {
    return deleteEmployee?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
    TResult Function(int id)? deleteEmployee,
    TResult Function(Employee employee)? saveEmployee,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmployees value) fetchEmployees,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_SaveEmployee value) saveEmployee,
  }) {
    return deleteEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmployees value)? fetchEmployees,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_SaveEmployee value)? saveEmployee,
  }) {
    return deleteEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmployees value)? fetchEmployees,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_SaveEmployee value)? saveEmployee,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(this);
    }
    return orElse();
  }
}

abstract class _DeleteEmployee implements EmployeeEvent {
  factory _DeleteEmployee(final int id) = _$_DeleteEmployee;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteEmployeeCopyWith<_$_DeleteEmployee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveEmployeeCopyWith<$Res> {
  factory _$$_SaveEmployeeCopyWith(
          _$_SaveEmployee value, $Res Function(_$_SaveEmployee) then) =
      __$$_SaveEmployeeCopyWithImpl<$Res>;
  @useResult
  $Res call({Employee employee});

  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$_SaveEmployeeCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$_SaveEmployee>
    implements _$$_SaveEmployeeCopyWith<$Res> {
  __$$_SaveEmployeeCopyWithImpl(
      _$_SaveEmployee _value, $Res Function(_$_SaveEmployee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$_SaveEmployee(
      null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get employee {
    return $EmployeeCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }
}

/// @nodoc

class _$_SaveEmployee implements _SaveEmployee {
  _$_SaveEmployee(this.employee);

  @override
  final Employee employee;

  @override
  String toString() {
    return 'EmployeeEvent.saveEmployee(employee: $employee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveEmployee &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveEmployeeCopyWith<_$_SaveEmployee> get copyWith =>
      __$$_SaveEmployeeCopyWithImpl<_$_SaveEmployee>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmployees,
    required TResult Function(int id) deleteEmployee,
    required TResult Function(Employee employee) saveEmployee,
  }) {
    return saveEmployee(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmployees,
    TResult? Function(int id)? deleteEmployee,
    TResult? Function(Employee employee)? saveEmployee,
  }) {
    return saveEmployee?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
    TResult Function(int id)? deleteEmployee,
    TResult Function(Employee employee)? saveEmployee,
    required TResult orElse(),
  }) {
    if (saveEmployee != null) {
      return saveEmployee(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmployees value) fetchEmployees,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_SaveEmployee value) saveEmployee,
  }) {
    return saveEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmployees value)? fetchEmployees,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_SaveEmployee value)? saveEmployee,
  }) {
    return saveEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmployees value)? fetchEmployees,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_SaveEmployee value)? saveEmployee,
    required TResult orElse(),
  }) {
    if (saveEmployee != null) {
      return saveEmployee(this);
    }
    return orElse();
  }
}

abstract class _SaveEmployee implements EmployeeEvent {
  factory _SaveEmployee(final Employee employee) = _$_SaveEmployee;

  Employee get employee;
  @JsonKey(ignore: true)
  _$$_SaveEmployeeCopyWith<_$_SaveEmployee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeState {
  List<Employee> get currentEmployees => throw _privateConstructorUsedError;
  List<Employee> get previousEmployees => throw _privateConstructorUsedError;
  bool get fetchingEmployees => throw _privateConstructorUsedError;
  bool get savingEmployees => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeStateCopyWith<EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeStateCopyWith<$Res> {
  factory $EmployeeStateCopyWith(
          EmployeeState value, $Res Function(EmployeeState) then) =
      _$EmployeeStateCopyWithImpl<$Res, EmployeeState>;
  @useResult
  $Res call(
      {List<Employee> currentEmployees,
      List<Employee> previousEmployees,
      bool fetchingEmployees,
      bool savingEmployees,
      String errorMessage});
}

/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res, $Val extends EmployeeState>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentEmployees = null,
    Object? previousEmployees = null,
    Object? fetchingEmployees = null,
    Object? savingEmployees = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      currentEmployees: null == currentEmployees
          ? _value.currentEmployees
          : currentEmployees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      previousEmployees: null == previousEmployees
          ? _value.previousEmployees
          : previousEmployees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      fetchingEmployees: null == fetchingEmployees
          ? _value.fetchingEmployees
          : fetchingEmployees // ignore: cast_nullable_to_non_nullable
              as bool,
      savingEmployees: null == savingEmployees
          ? _value.savingEmployees
          : savingEmployees // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmployeeStateCopyWith<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  factory _$$_EmployeeStateCopyWith(
          _$_EmployeeState value, $Res Function(_$_EmployeeState) then) =
      __$$_EmployeeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Employee> currentEmployees,
      List<Employee> previousEmployees,
      bool fetchingEmployees,
      bool savingEmployees,
      String errorMessage});
}

/// @nodoc
class __$$_EmployeeStateCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$_EmployeeState>
    implements _$$_EmployeeStateCopyWith<$Res> {
  __$$_EmployeeStateCopyWithImpl(
      _$_EmployeeState _value, $Res Function(_$_EmployeeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentEmployees = null,
    Object? previousEmployees = null,
    Object? fetchingEmployees = null,
    Object? savingEmployees = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_EmployeeState(
      currentEmployees: null == currentEmployees
          ? _value._currentEmployees
          : currentEmployees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      previousEmployees: null == previousEmployees
          ? _value._previousEmployees
          : previousEmployees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      fetchingEmployees: null == fetchingEmployees
          ? _value.fetchingEmployees
          : fetchingEmployees // ignore: cast_nullable_to_non_nullable
              as bool,
      savingEmployees: null == savingEmployees
          ? _value.savingEmployees
          : savingEmployees // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmployeeState implements _EmployeeState {
  _$_EmployeeState(
      {required final List<Employee> currentEmployees,
      required final List<Employee> previousEmployees,
      required this.fetchingEmployees,
      required this.savingEmployees,
      required this.errorMessage})
      : _currentEmployees = currentEmployees,
        _previousEmployees = previousEmployees;

  final List<Employee> _currentEmployees;
  @override
  List<Employee> get currentEmployees {
    if (_currentEmployees is EqualUnmodifiableListView)
      return _currentEmployees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentEmployees);
  }

  final List<Employee> _previousEmployees;
  @override
  List<Employee> get previousEmployees {
    if (_previousEmployees is EqualUnmodifiableListView)
      return _previousEmployees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousEmployees);
  }

  @override
  final bool fetchingEmployees;
  @override
  final bool savingEmployees;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'EmployeeState(currentEmployees: $currentEmployees, previousEmployees: $previousEmployees, fetchingEmployees: $fetchingEmployees, savingEmployees: $savingEmployees, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeState &&
            const DeepCollectionEquality()
                .equals(other._currentEmployees, _currentEmployees) &&
            const DeepCollectionEquality()
                .equals(other._previousEmployees, _previousEmployees) &&
            (identical(other.fetchingEmployees, fetchingEmployees) ||
                other.fetchingEmployees == fetchingEmployees) &&
            (identical(other.savingEmployees, savingEmployees) ||
                other.savingEmployees == savingEmployees) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_currentEmployees),
      const DeepCollectionEquality().hash(_previousEmployees),
      fetchingEmployees,
      savingEmployees,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeStateCopyWith<_$_EmployeeState> get copyWith =>
      __$$_EmployeeStateCopyWithImpl<_$_EmployeeState>(this, _$identity);
}

abstract class _EmployeeState implements EmployeeState {
  factory _EmployeeState(
      {required final List<Employee> currentEmployees,
      required final List<Employee> previousEmployees,
      required final bool fetchingEmployees,
      required final bool savingEmployees,
      required final String errorMessage}) = _$_EmployeeState;

  @override
  List<Employee> get currentEmployees;
  @override
  List<Employee> get previousEmployees;
  @override
  bool get fetchingEmployees;
  @override
  bool get savingEmployees;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeStateCopyWith<_$_EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}
