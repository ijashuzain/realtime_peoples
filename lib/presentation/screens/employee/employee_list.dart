import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_peoples/data/datasources/constant/designations.dart';
import 'package:realtime_peoples/presentation/screens/employee/bloc/employee_bloc.dart';
import 'package:realtime_peoples/presentation/screens/employee/employee_details.dart';
import 'package:realtime_peoples/presentation/screens/employee/widgets/empty_list_widget.dart';
import 'package:realtime_peoples/presentation/screens/employee/widgets/square_floating_add_button.dart';
import 'package:sizer/sizer.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({Key? key}) : super(key: key);

  _init(BuildContext context) {
    context.read<EmployeeBloc>().add(EmployeeEvent.fetchEmployees());
  }

  @override
  Widget build(BuildContext context) {
    _init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee List"),
        actions: [
          IconButton(onPressed: (){
            context.read<EmployeeBloc>().add(EmployeeEvent.fetchEmployees());
          }, icon: const Icon(Icons.refresh))
        ],
      ),
      body: BlocBuilder<EmployeeBloc, EmployeeState>(builder: (context, state) {
        if (state.fetchingEmployees) {
          return const Center(child: CupertinoActivityIndicator());
        }
        if (state.currentEmployees.isEmpty && state.previousEmployees.isEmpty) {
          return Stack(
            children: [
              const EmptyListWidget(),
              Positioned(
                bottom: 16,
                right: 16,
                child: SquareFloatingAddButton(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EmployeeDetails()));
                }),
              )
            ],
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (state.currentEmployees.isNotEmpty) const Heading("Current Employees"),
            if (state.currentEmployees.isNotEmpty) Expanded(child: _buildCurrentEmployees(context,state)),
            if (state.previousEmployees.isNotEmpty) const Heading("Previous Employees"),
            if (state.previousEmployees.isNotEmpty) Expanded(child: _buildCurrentEmployees(context,state)),
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Stack(
                  children: [
                    Text(
                      "Swipe left to delete",
                      style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SquareFloatingAddButton(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EmployeeDetails()));
                      }),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}

Widget _buildCurrentEmployees(BuildContext context, EmployeeState state) {
  return Container(
    color: Colors.white,
    child: ListView.builder(
      itemCount: state.currentEmployees.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  state.currentEmployees[index].name,
                  style: TextStyle(color: Colors.black54, fontSize: 14.sp, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 1.w),
                convertJsonToDropdownList(designationJson).firstWhere((element) => element.value == state.currentEmployees[index].designation).child,
                SizedBox(height: 1.w),
                Text(
                  "From ${state.currentEmployees[index].fromDate}",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.sp,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

_buildPreviousEmployees(BuildContext context, EmployeeState state) {
  return ListView.builder(
    itemCount: 5,
    shrinkWrap: true,
    itemBuilder: (context, index) {},
  );
}

class Heading extends StatelessWidget {
  final String title;

  const Heading(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 14.sp, fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class EmployeeCard extends StatelessWidget {
  const EmployeeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
