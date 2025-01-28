import 'package:flutter/material.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';

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
  List<String> _selectedValues = [];

  @override
  void initState() {
    super.initState();
    _selectedValues = List<String>.from(widget.selectedValues);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: MultiSelectDialogField<String>(
            items: widget.options
                .map((e) => MultiSelectItem<String>(e, e))
                .toList(),
            initialValue: _selectedValues,
            listType: MultiSelectListType.CHIP,
            onConfirm: (values) {
              setState(() {
                _selectedValues = values;
                widget.onChanged(values);
              });
            },
            title: Text(widget.title),
            selectedColor: Theme.of(context).colorScheme.primary,
            selectedItemsTextStyle: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          
            buttonText: Text(
              'Select ${widget.title}',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 103, 98, 98),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
