import 'package:flutter/material.dart';
import 'package:login/core/models/profile_modal.dart';

class TopNameBordWidget extends StatelessWidget {
  const TopNameBordWidget({
    super.key, required this.profileData,
  });
  final ProfileModel profileData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         profileData.profileData.isNotEmpty ==
                      true &&
                 profileData. profileData.first !=
                      null
              ? "${profileData.profileData.first.firstName.toUpperCase()} ${profileData.profileData.first.lastName.toUpperCase()}"
              : "Name not available",
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20,
            color: Color.fromARGB(255, 88, 88, 88),
          ),
        ),
        Row(
          children: [
            const Icon(Icons.email,
                color:
                    Color.fromARGB(255, 88, 88, 88),
                size: 15),
            const SizedBox(
              width: 5,
            ),
            Text(
              profileData.profileData
                              .isNotEmpty ==
                          true &&
                      profileData.profileData
                              .first !=
                          null
                  ? profileData.profileData.first
                      .email
                  : "Email not available",
              style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 88, 88, 88)),
            )
          ],
        ),
        Row(
          children: [
            const Icon(Icons.phone,
                color: Color.fromARGB(255, 88, 88, 88),
                size: 15),
            const SizedBox(width: 5),
            Text(
              profileData.profileData
                              .isNotEmpty ==
                          true &&
                     profileData.profileData
                              .first !=
                          null
                  ? profileData.profileData.first
                      .contact
                  : "Phone not available",
                  style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 88, 88, 88)),
            )
          ],
        )
      ],
    );
  }
}