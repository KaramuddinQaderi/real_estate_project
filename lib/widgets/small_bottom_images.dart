import 'package:flutter/material.dart';

import '../utilities/size_config.dart';

class SmallBottomImages extends StatelessWidget {
  const SmallBottomImages({
    super.key,
    required this.index,
    required this.imagesPath,
  });
  final int index;
  final List<String> imagesPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.setSizeHorizontally(42),
      height: SizeConfig.setSizeVertically(43),
      padding: EdgeInsets.all(
        SizeConfig.setSizeHorizontally(1.5),
      ),
      margin: EdgeInsets.only(
        left: index != 0 ? SizeConfig.setSizeHorizontally(5) : 0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: index == 2
          ? Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    imagesPath[index],
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(
                            color: Colors.blue[900]!.withOpacity(0.8),
                          )
                          .color,
                    ),
                  ),
                ),
                Positioned(
                  child: Center(
                    child: Text(
                      '+9',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: SizeConfig.setSizeHorizontally(15),
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
              ],
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                imagesPath[index],
                fit: BoxFit.fill,
              ),
            ),
    );
  }
}
