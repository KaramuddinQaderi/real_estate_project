import 'package:flutter/material.dart';

import '../utilities/size_config.dart';

class TopBackAndShareBtn extends StatelessWidget {
  const TopBackAndShareBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SizeConfig.getScreenHeight() * 0.05,
      left: SizeConfig.setSizeHorizontally(20),
      child: SizedBox(
        width: SizeConfig.getScreenWidth() * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                SizeConfig.setSizeHorizontally(8),
                SizeConfig.setSizeVertically(10),
                SizeConfig.setSizeHorizontally(8),
                SizeConfig.setSizeVertically(10),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: SizeConfig.setSizeHorizontally(20),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                SizeConfig.setSizeHorizontally(8),
                SizeConfig.setSizeVertically(10),
                SizeConfig.setSizeHorizontally(8),
                SizeConfig.setSizeVertically(10),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.share_outlined,
                  size: SizeConfig.setSizeHorizontally(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
