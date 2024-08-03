import 'package:flutter/material.dart';

import '../utilities/size_config.dart';

class ForSaleBox extends StatelessWidget {
  const ForSaleBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getScreenWidth(),
      height: SizeConfig.setSizeVertically(45),
      decoration: BoxDecoration(
        color: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(
              color: const Color.fromARGB(255, 230, 248, 230),
            )
            .color,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 3,
            color: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.black38)
                .color!,
          ),
        ],
      ),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Text(
            'For Sale',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.green[500],
                  background: null,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
          ),
        ),
      ),
    );
  }
}
