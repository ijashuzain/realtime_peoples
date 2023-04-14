import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'datepicker_dialog.dart';

class CustomDatePickerField extends StatefulWidget {
  final Function(String) onSelected;
  final String? selectedDate;

  const CustomDatePickerField({Key? key, this.selectedDate, required this.onSelected}) : super(key: key);

  @override
  State<CustomDatePickerField> createState() => _CustomDatePickerFieldState();
}

class _CustomDatePickerFieldState extends State<CustomDatePickerField> {
  String? pickedDate;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        pickedDate = widget.selectedDate;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1.2),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(Icons.event, color: Theme.of(context).primaryColor),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  backgroundColor: Colors.transparent,
                  clipBehavior: Clip.antiAlias,
                  child: Material(
                    borderRadius: BorderRadius.circular(12),
                    child: CustomDatePickerDialog(
                      onSelected: (date) {
                        setState(() {
                          pickedDate = date;
                        });
                        widget.onSelected(date);
                      },
                    ),
                  ),
                ),
              );
            },
            child: Text(
              pickedDate ?? "Select Date",
              style: TextStyle(color: Colors.black54, fontSize: 12.sp),
            ),
          )
        ],
      ),
    );
  }
}
