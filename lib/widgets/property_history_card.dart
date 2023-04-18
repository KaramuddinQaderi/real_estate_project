import 'package:flutter/material.dart';

import '../utilities/size_config.dart';

class PropertyHistoryCard extends StatelessWidget {
  const PropertyHistoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 23,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.white)
            .color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'List: 08.05.2022',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.green.shade300)
                      .color,
                ),
                child: const Text(
                  'SOLD',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Gilroy',
                    letterSpacing: 1,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.setSizeVertically(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text.rich(
                TextSpan(
                  text: 'Listed for: ',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                  ),
                  children: [
                    TextSpan(
                      text: '\$1,549,586',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    )
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  text: 'Sold for: ',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                  ),
                  children: [
                    TextSpan(
                      text: '\$1,549,586',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.setSizeVertically(20)),
          const Text(
            'MLS#: E5579076',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Gilroy',
            ),
          ),
        ],
      ),
    );
  }
}
