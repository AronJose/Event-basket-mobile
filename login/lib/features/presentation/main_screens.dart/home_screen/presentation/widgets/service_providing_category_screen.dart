import 'package:flutter/material.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen/presentation/widgets/home_card.dart';

class ServiceProvidingCategoryScreen extends StatelessWidget {
  const ServiceProvidingCategoryScreen({
    super.key,
    required this.widget,
    required this.isExpanded,
  });

  final HomeCard widget;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.eventModal!.services.isNotEmpty)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Services  : ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              Flexible(
                child: Text(
                  widget.eventModal!.services.join(', '),
                  maxLines: isExpanded ? null : 2,
                  overflow:
                      isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 108, 108, 108),
                    fontWeight: FontWeight.normal,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
        const SizedBox(
          height: 5,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Providing: ",
               style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 12,
                ),
            ),
            Flexible(
              child: Text(
                widget.eventModal!.providing.join(', '),
                maxLines: isExpanded ? null : 2,
                overflow:
                    isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color.fromARGB(255, 108, 108, 108),
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Category : ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 12,
                ),
            ),
            Flexible(
              child: Text(
                widget.eventModal!.category.join(', '),
                maxLines: isExpanded ? null : 2,
                overflow:
                    isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color.fromARGB(255, 108, 108, 108),
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
