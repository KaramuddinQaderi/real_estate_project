import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../utilities/size_config.dart';
import 'property_history_card.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({
    Key? key,
    required this.onTap,
    required this.text,
    required this.icon,
    required this.isCollapsed,
  }) : super(key: key);

  final Function() onTap;
  final String text;
  final IconData icon;
  final bool isCollapsed;

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            width: SizeConfig.getScreenWidth(),
            height: SizeConfig.setSizeVertically(65),
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.setSizeHorizontally(20),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(
                    color: widget.isCollapsed ? Colors.white : Colors.blue,
                  )
                  .color,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      widget.icon,
                      color: widget.isCollapsed ? Colors.black : Colors.white,
                      size: 30,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      widget.text,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: SizeConfig.setSizeHorizontally(15),
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: widget.isCollapsed
                                      ? Colors.black87
                                      : Colors.white,
                                )
                                .color,
                          ),
                    )
                  ],
                ),
                AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _animation.value * math.pi,
                      child: child,
                    );
                  },
                  child: Icon(
                    widget.isCollapsed
                        ? Icons.keyboard_arrow_down_rounded
                        : Icons.keyboard_arrow_up_rounded,
                    size: 30,
                    color: widget.isCollapsed ? Colors.black : Colors.white,
                  ),
                ),
              ],
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            vsync: this,
            child: Container(
              height: widget.isCollapsed ? 0 : null,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        text: 'Buy/Sell History for',
                        children: [
                          TextSpan(
                            text:
                                ' 2118 Thornridge Cir. Syracuse, Connecticut 35624',
                            style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Colors.black,
                                  )
                                  .color,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const PropertyHistoryCard(),
                  const PropertyHistoryCard(),
                  const PropertyHistoryCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
