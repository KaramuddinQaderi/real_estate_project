import 'package:flutter/material.dart';
import '../utilities/size_config.dart';
import 'categories_item_widget.dart';

class PropertyCategoriesRow extends StatelessWidget {
  const PropertyCategoriesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Container(
        color: Colors.grey.shade200,
        height: 120,
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 0,
            top: 20,
            left: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Text(
                  'Property Details',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 20,
                    color: Color.fromARGB(255, 12, 16, 61),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CardListView(
                      iconData: Icons.apartment_rounded,
                      label: 'Apartment',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardListView(
                      iconData: Icons.bedroom_parent_outlined,
                      label: '3 Bedrooms',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardListView(
                      iconData: Icons.bathroom_outlined,
                      label: '2 Bathrooms',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardListView(
                      iconData: Icons.garage_outlined,
                      label: '2 Garage',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardListView extends StatelessWidget {
  final IconData? iconData;
  final String? label;
  CardListView({this.iconData, this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Colors.blueGrey[600],
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              label!,
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 12,
                color: Color.fromARGB(255, 84, 110, 122),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
