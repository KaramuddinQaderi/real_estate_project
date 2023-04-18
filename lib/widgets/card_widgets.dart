import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../utilities/size_config.dart';

class CardWidgets extends StatefulWidget {
  const CardWidgets({
    super.key,
  });

  @override
  State<CardWidgets> createState() => _CardWidgetsState();
}

class _CardWidgetsState extends State<CardWidgets> {
  @override
  Widget build(BuildContext context) {
    bool isToggled = false;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.setSizeHorizontally(20),
            vertical: SizeConfig.setSizeVertically(20),
          ),
          child: Row(
            children: [
              Expanded(
                child: CardHead(
                  iconData: Icons.map_outlined,
                  label: 'View on Map',
                ),
              ),
              SizedBox(
                width: SizeConfig.setSizeHorizontally(15),
              ),
              Expanded(
                child: CardHead(
                  iconData: Icons.turn_right_rounded,
                  label: 'Get Directions',
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            color: Colors.blueGrey[50],
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: ListTile(
              horizontalTitleGap: 100,
              title: FlutterSwitch(
                height: 25.0,
                width: 40.0,
                padding: 4.0,
                toggleSize: 15.0,
                borderRadius: 30.0,
                value: isToggled,
                onToggle: (value) {
                  setState(() {
                    isToggled = value;
                  });
                },
              ),
              leading: const Text(
                'Notify similar properties like this',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 14,
                  color: Color.fromARGB(255, 12, 16, 61),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CardHead extends StatelessWidget {
  final IconData? iconData;
  final String? label;

  CardHead({this.iconData, this.label});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        //set border radius more than 50% of height and width to make circle
      ),
      child: ListTile(
        title: Icon(
          iconData,
          color: Colors.black,
        ),
        leading: Text(
          label!,
          style: TextStyle(
              fontFamily: 'Gilroy', fontSize: 14, color: Colors.grey[700]),
        ),
      ),
    );
  }
}
