import 'package:flutter/material.dart';
import 'package:login/common/widgets/icon_button.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen/presentation/widgets/home_card.dart';

class AdressContactEmailContainerScreen extends StatelessWidget {
  const AdressContactEmailContainerScreen({
    super.key,
    required this.widget,
    required this.icons,
    required this.name,
    required this.title,
  });

  final HomeCard widget;
  final IconData icons;
  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(60),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: IconsButtonsCommon(
        iconModel: Icon(icons),
        iconColor: Colors.white,
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Text(name),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
