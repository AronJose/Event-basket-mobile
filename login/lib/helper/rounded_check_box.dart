import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedCheckbox extends StatelessWidget {
  final String label;
  final bool isSelected;
  final ValueChanged<bool> onChanged;

  const RoundedCheckbox({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!isSelected),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: isSelected ? const Color.fromARGB(255, 2, 99, 5) : Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black),
            ),
            padding: EdgeInsets.all(8.w),
            child: Icon(
              isSelected ? Icons.check : Icons.circle,
              color: Colors.white,
              size: 5.sp,
            ),
          ),
          SizedBox(width: 5.w),
          Text(
            label,
            style: TextStyle(
              color: const Color.fromARGB(255, 12, 11, 11),
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
