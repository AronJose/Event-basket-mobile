import 'package:flutter/material.dart';
import 'package:login/core/models/profile_modal.dart';

class ProfileImagesGridWidget extends StatelessWidget {
  const ProfileImagesGridWidget({
    super.key,
    required this.showPhotos,
    required this.profileDetails,
  });

  final bool showPhotos;
  final ProfileModel profileDetails;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: 
              profileDetails.profileData.first.id.image.isNotEmpty
          ? Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 300, 
              child:showPhotos? GridView.builder(
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                shrinkWrap:
                    true, 
                physics:
                    const AlwaysScrollableScrollPhysics(), 
                itemCount: profileDetails.profileData.first
                    .id.image.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(
                        8), 
                    child: Image.network(
                      profileDetails.profileData.first.id
                          .image[index],
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context,
                          Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress
                                        .expectedTotalBytes !=
                                    null
                                ? loadingProgress
                                        .cumulativeBytesLoaded /
                                    loadingProgress
                                        .expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error,
                            color: Colors.red);
                      },
                    ),
                  );
                },
              ):null,
            )
          : const SizedBox.shrink(),
    );
  }
}