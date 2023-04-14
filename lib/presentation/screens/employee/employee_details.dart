import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_peoples/data/datasources/constant/designations.dart';
import 'package:realtime_peoples/data/models/employee.dart';
import 'package:realtime_peoples/presentation/screens/employee/bloc/employee_bloc.dart';
import 'package:realtime_peoples/presentation/screens/employee/widgets/custom_dropdown.dart';
import 'package:realtime_peoples/presentation/screens/employee/widgets/datepicker_field.dart';
import 'package:sizer/sizer.dart';

import '../../../core/globals/app_alert_dialogue.dart';

class EmployeeDetails extends StatefulWidget {
  final bool isEdit;

  EmployeeDetails({Key? key, this.isEdit = false}) : super(key: key);

  @override
  State<EmployeeDetails> createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
  final TextEditingController _nameController = TextEditingController();
  int? designation;
  String? fromDate;
  String? toDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.isEdit ? 'Edit' : 'Add'} Employee Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              style: TextStyle(color: Colors.black54, fontSize: 12.sp),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Theme.of(context).primaryColor,
                ),
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))),
                hintText: "Employee Name",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.sp),
                contentPadding: const EdgeInsets.symmetric(vertical: 0.5),
              ),
            ),
            SizedBox(height: 4.w),
            CustomDropdown(
              items: convertJsonToDropdownList(designationJson),
              value: designation,
              onSelected: (val) {
                setState(() {
                  designation = val;
                });
              },
            ),
            SizedBox(height: 4.w),
            SizedBox(
              width: 100.w,
              child: Row(
                children: [
                  Expanded(
                    child: CustomDatePickerField(
                      selectedDate: fromDate,
                      onSelected: (date) {
                        setState(() {
                          fromDate = date;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Expanded(
                    child: CustomDatePickerField(
                      selectedDate: toDate,
                      onSelected: (date) {
                        setState(() {
                          toDate = date;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Divider(),
            SizedBox(
              height: 54,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 38,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel"),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  BlocConsumer<EmployeeBloc, EmployeeState>(listener: (context, state) {
                    if (state.errorMessage.isNotEmpty) {
                      appAlertDialog(context, "Failed", state.errorMessage);
                    } else {
                      appAlertDialog(context, "Success", "Employee has saved successfully");
                      context.read<EmployeeBloc>().add(EmployeeEvent.fetchEmployees());
                      _clear();
                    }
                  }, listenWhen: (old, current) {
                    if (old.savingEmployees && !current.savingEmployees) {
                      return true;
                    } else {
                      return false;
                    }
                  }, builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        if (!state.savingEmployees) {
                          if (_validate()) {
                            if (!widget.isEdit) {
                              Employee employee = Employee(
                                name: _nameController.text,
                                designation: designation!,
                                fromDate: fromDate!,
                                toDate: toDate!,
                              );
                              context.read<EmployeeBloc>().add(EmployeeEvent.saveEmployee(employee));
                            }
                          } else {
                            appAlertDialog(context, "Failed", "Some fields are missing");
                          }
                        }
                      },
                      child: const Text("Save"),
                    );
                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _validate() {
    if (_nameController.text.isEmpty && designation == null && fromDate == null && toDate == null) {
      return false;
    } else {
      return true;
    }
  }

  _clear() {
    _nameController.clear();
    designation = null;
    fromDate = null;
    toDate = null;
    setState(() {});
  }
}
