import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/blocs/role/role_bloc.dart';

class RoleRadioButton extends StatefulWidget {
  final ValueChanged<String> onRoleSelected;

  const RoleRadioButton({super.key, required this.onRoleSelected});

  @override
  State<RoleRadioButton> createState() => _RoleRadioButtonState();
}

class _RoleRadioButtonState extends State<RoleRadioButton> {
  String? selectedRole;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoleBloc, RoleState>(
      builder: (context, state) {
        return Column(
          children: state.data
              .where((role) => role.roleName != "SuperAdmin")
              .map((role) {
            return RadioListTile<String>(
              title: Text(role.roleName),
              value: role.roleName,
              groupValue: selectedRole,
              onChanged: (value) {
                setState(() {
                  selectedRole = value;
                });
                widget.onRoleSelected(value!);
              },
            );
          }).toList(),
        );
      },
    );
  }
}
