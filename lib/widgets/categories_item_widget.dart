import 'package:flutter/material.dart';

import '../utilities/size_config.dart';

class CategoriesItemWidget extends StatelessWidget {
  const CategoriesItemWidget({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.setSizeHorizontally(20),
        vertical: SizeConfig.setSizeVertically(10),
      ),
      margin: EdgeInsets.fromLTRB(
        index == 0 ? SizeConfig.setSizeHorizontally(20) : 0,
        0,
        index != 3
            ? SizeConfig.setSizeHorizontally(20)
            : SizeConfig.setSizeHorizontally(20),
        0,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 3),
            blurRadius: 3,
            color: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.black12)
                .color!,
          )
        ],
        color: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.white)
            .color,
      ),
      child: Row(
        children: const [
          Icon(Icons.apartment),
          SizedBox(width: 10),
          Text('Apartment'),
        ],
      ),
    );
  }
}
