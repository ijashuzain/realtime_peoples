import 'package:flutter/material.dart';
import 'package:realtime_peoples/core/globals/datetime_convertions.dart';
import 'package:sizer/sizer.dart';

class CustomDatePickerDialog extends StatefulWidget {
  final String? selectedDate;
  final Function(String) onSelected;

  const CustomDatePickerDialog({Key? key, this.selectedDate, required this.onSelected}) : super(key: key);

  @override
  State<CustomDatePickerDialog> createState() => _CustomDatePickerDialogState();
}

class _CustomDatePickerDialogState extends State<CustomDatePickerDialog> {
  DateTime? pickedDate;

  @override
  void initState() {
    if (widget.selectedDate != null) {
      pickedDate = parseStringToDateTime(widget.selectedDate!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        pickedDate = null;
                      });
                    },
                    child: const Text("No Date"),
                  ),
                ),
                SizedBox(width: 2.w),
                Expanded(
                  child: Container(
                    height: 38,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          pickedDate = DateTime.now();
                        });
                      },
                      child: const Text("Today"),
                    ),
                  ),
                ),
              ],
            ),
            CalendarDatePicker(
              initialDate: pickedDate ?? DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(3000),
              onDateChanged: (picked) {
                setState(() {
                  pickedDate = picked;
                });
              },
            ),
            SizedBox(height: 4.w),
            SizedBox(
              height: 48,
              child: Row(
                children: [
                  SizedBox(width: 2.w),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.event,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          pickedDate != null ? formatDateTimeToString(pickedDate!) : "No Date",
                          style: TextStyle(color: Colors.black54, fontSize: 10.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 2.w),
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
                  ElevatedButton(
                    onPressed: () {
                      if (pickedDate != null) {
                        widget.onSelected(formatDateTimeToString(pickedDate!));
                        Navigator.pop(context);
                      } else {
                        Navigator.pop(context);
                      }
                    },
                    child: const Text("Save"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
