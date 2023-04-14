import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

var designationJson = '[{"name": "Product Designer", "value": 0},{"name": "Flutter Developer", "value": 1},{"name": "QA Tester", "value": 2},{"name": "Product Owner", "value": 3}]';

List<DropdownMenuItem<int>> convertJsonToDropdownList(String jsonStr) {
  List<dynamic> data = json.decode(jsonStr);
  List<DropdownMenuItem<int>> dropdownList = [];
  for (var item in data) {
    dropdownList.add(
      DropdownMenuItem(
        value: item['value'],
        child: Text(
          item['name'],
          style: TextStyle(color: Colors.grey, fontSize: 12.sp),
        ),
      ),
    );
  }
  return dropdownList;
}
