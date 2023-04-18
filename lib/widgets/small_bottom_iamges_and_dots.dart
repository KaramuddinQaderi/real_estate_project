import 'package:flutter/material.dart';

import '../list.dart';
import '../main.dart';
import '../utilities/size_config.dart';
import 'small_bottom_images.dart';

class SmallBottomImagesAndDots extends StatefulWidget {
  const SmallBottomImagesAndDots({
    super.key,
    required this.currentImage,
  });
  final int currentImage;
  @override
  State<SmallBottomImagesAndDots> createState() =>
      _SmallBottomImagesAndDotsState();
}

class _SmallBottomImagesAndDotsState extends State<SmallBottomImagesAndDots> {
  int imagesNumber = 3;
  int dotsNumber = 4;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: SizeConfig.setSizeVertically(15),
      left: SizeConfig.setSizeHorizontally(20),
      child: SizedBox(
        width: SizeConfig.getScreenWidth() * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ...List.generate(
                  imagesNumber,
                  (index) => SmallBottomImages(
                    index: index,
                    imagesPath: builderImages,
                  ),
                )
              ],
            ),
            Row(
              children: [
                ...List.generate(
                  dotsNumber,
                  (index) => tinyDots(context: context, index: index),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer tinyDots(
      {required BuildContext context, required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: SizeConfig.setSizeHorizontally(9),
      height: SizeConfig.setSizeHorizontally(9),
      margin: EdgeInsets.only(
        left: index != 0 ? SizeConfig.setSizeHorizontally(8) : 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: index == widget.currentImage
            ? Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white)
                .color
            : Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(
                  color: Colors.white.withOpacity(0.4),
                )
                .color,
      ),
    );
  }
}
