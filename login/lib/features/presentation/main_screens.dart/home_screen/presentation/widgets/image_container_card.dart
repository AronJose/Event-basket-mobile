import 'package:flutter/material.dart';

class ImageContainerCard extends StatelessWidget {
  const ImageContainerCard({
    super.key,
    required this.imagePath,
    required this.onTap,
    required this.index,
    required this.count,
  });

  final String imagePath;
  final VoidCallback onTap;
  final int index;
  final int count;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: index == 3 ? null : onTap,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Image.network(
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.image_not_supported_outlined,
                ),
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          if(index ==3 )   Container(height: double.maxFinite,width: double.maxFinite,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),),
          if(index ==3 )  Align(alignment: Alignment.center,
            child: Text("+ $count",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),)
          ],
        ),
    
      ),
    );
  }
}
