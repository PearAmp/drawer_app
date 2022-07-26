import 'package:flutter/material.dart';

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Image.asset(
            'assets/images/birthday.jpeg',
            height: 100,
          ),
          Column(
            children: [Text('999999')],
          ),
        ],
      ),
    );
  }
}
