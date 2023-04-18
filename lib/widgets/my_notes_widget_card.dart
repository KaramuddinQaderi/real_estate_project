import 'package:flutter/material.dart';

class MyNotesWidgetCard extends StatelessWidget {
  const MyNotesWidgetCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.white)
            .color,
        boxShadow: const [
          BoxShadow(
            offset: Offset(1, 2),
            blurRadius: 3,
            color: Colors.black26,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'My Notes',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
              fontFamily: 'Gilroy',
              fontSize: 16,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Add Note',
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
