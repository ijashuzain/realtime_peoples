import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:realtime_peoples/core/di/di.dart';
import 'package:realtime_peoples/presentation/screens/employee/bloc/employee_bloc.dart';
import 'package:realtime_peoples/presentation/screens/employee/employee_list.dart';
import 'package:realtime_peoples/core/hive/hive_config.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Initialise Configuration Functions
  configureDependencies();
  await Hive.initFlutter();
  await HiveConfig().openBoxes();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiBlocProvider(
        providers: [BlocProvider<EmployeeBloc>(create: (context) => getIt<EmployeeBloc>())],
        child: MaterialApp(
          title: 'Realtime Peoples',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: EmployeeList(),
        ),
      );
    });
  }
}
