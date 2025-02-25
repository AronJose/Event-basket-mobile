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
    final isFavorite = widget.favoriteEvent != null;

    final services = isFavorite
        ? widget.favoriteEvent!.eventId.first.services
        : widget.eventModal!.services;
    final providing = isFavorite
        ? widget.favoriteEvent!.eventId.first.providing
        : widget.eventModal!.providing;
    final category = isFavorite
        ? widget.favoriteEvent!.eventId.first.category
        : widget.eventModal!.category;

    return Column(
      children: [
        if (services.isNotEmpty)
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
                  services.join(', '),
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
        if (services.isNotEmpty) const SizedBox(
          height: 5,
        ),
        if(providing.isNotEmpty) Row(
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
                providing.join(', '),
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
        if(providing.isNotEmpty) const SizedBox(
          height: 5,
        ),
       if (category.isNotEmpty) Row(
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
                category.join(', '),
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
