// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasources/hivedb/employee_box.dart' as _i3;
import '../../data/repositories/employee_repository_impl.dart' as _i5;
import '../../domain/repositories/employee_repository.dart' as _i4;
import '../../presentation/screens/employee/bloc/employee_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.EmployeeBoxRepository>(() => _i3.EmployeeBoxRepositoryImpl());
  gh.factory<_i4.EmployeeRepository>(
      () => _i5.EmployeeRepositoryImpl(get<_i3.EmployeeBoxRepository>()));
  gh.factory<_i6.EmployeeBloc>(
      () => _i6.EmployeeBloc(get<_i4.EmployeeRepository>()));
  return get;
}
