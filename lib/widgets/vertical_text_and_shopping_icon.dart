import 'package:flutter/material.dart';

import '../utilities/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerticalTextsAndShoppingIcon extends StatelessWidget {
  const VerticalTextsAndShoppingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.setSizeHorizontally(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MLS#: E5579076',
                    style: TextStyle(
                      fontSize: SizeConfig.setSizeHorizontally(16),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy',
                      shadows: const <Shadow>[
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          color: Color.fromARGB(111, 94, 94, 94),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      text: 'Listed for:',
                      style: const TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Gilroy',
                        shadows: const <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(111, 94, 94, 94),
                          ),
                        ],
                      ),
                      children: [
                        TextSpan(
                          text: '\$1,549,586',
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            color: Colors.blue[600],
                            fontWeight: FontWeight.bold,
                            shadows: const <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(111, 94, 94, 94),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ClipOval(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      child: SvgPicture.asset(
                        'assets/images/shopping-cart.svg',
                        height: 40,
                        width: 40,
                        fit: BoxFit.none,
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.setSizeVertically(13),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.setSizeHorizontally(20),
          ),
          child: const Text(
            '2118 Thornridge Cir. Syracuse, Connecticut 35624',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontFamily: 'Gilroy'),
          ),
        ),
      ],
    );
  }
}
