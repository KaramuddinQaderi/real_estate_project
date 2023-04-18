import 'package:flutter/material.dart';

import '../utilities/size_config.dart';

class ListingAgentCardWidget extends StatelessWidget {
  const ListingAgentCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getScreenWidth(),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Listing Agent',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Gilroy',
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Courtney Henry',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Business Monitor International',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Gilroy',
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.phone_in_talk_outlined),
              )
            ],
          )
        ],
      ),
    );
  }
}
