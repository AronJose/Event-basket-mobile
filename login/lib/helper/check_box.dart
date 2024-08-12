import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multiselect/multiselect.dart';

class MultiSelectCheckBox extends StatefulWidget {
  const MultiSelectCheckBox({
    super.key,
    required this.title,
    required this.options,
    required this.selectedValues,
    required this.onChanged,
  });

  final String title;
  final List<String> options;
  final List<String> selectedValues;
  final Function(List<String>) onChanged;

  @override
  State<MultiSelectCheckBox> createState() => _MultiSelectCheckBoxState();
}

class _MultiSelectCheckBoxState extends State<MultiSelectCheckBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: DropDownMultiSelect(
        decoration: InputDecoration(
          fillColor: Theme.of(context).colorScheme.onPrimary,
          focusColor: Theme.of(context).colorScheme.onPrimary,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 117, 183, 236),
              width: 2.w,
            ),
          ),
        ),
        options: widget.options,
        selectedValues: List<String>.from(widget.selectedValues),
        onChanged: (List<String> value) {
          widget.onChanged(value);
        },
        whenEmpty: 'Select ${widget.title}',
      ),
    );
  }
}
