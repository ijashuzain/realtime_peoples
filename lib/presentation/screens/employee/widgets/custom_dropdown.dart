import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomDropdown extends StatefulWidget {
  final int? value;
  final List<DropdownMenuItem> items;
  final Function(int) onSelected;

  const CustomDropdown({Key? key, required this.items, this.value, required this.onSelected}) : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  int? _selectedValue;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        _selectedValue = widget.value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDropdownBottomSheet();
      },
      child: Container(
        height: 48,
        width: 100.w,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1.2),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(Icons.work, color: Theme.of(context).primaryColor),
            ),
            Expanded(
              child: _selectedValue != null
                  ? widget.items.firstWhere((element) => element.value == _selectedValue).child
                  : Text(
                      "Select Designation",
                      style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                    ),
            )
          ],
        ),
      ),
    );
  }

  void _showDropdownBottomSheet() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 30.h,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: widget.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedValue = widget.items[index].value;
                          });
                          widget.onSelected(widget.items[index].value);
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          width: 100.w,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12.0),
                              child: widget.items[index].child,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
