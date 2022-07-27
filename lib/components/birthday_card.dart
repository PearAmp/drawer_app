import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({
    Key? key,
  }) : super(key: key);

  get index => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/card.jpg',
            height: 150,
            width: 110,
            fit: BoxFit.cover,
          ),
          const Gap(10),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Product Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const Text(
                  '\$birthday card',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                Gap(8),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.amber.shade600,
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.amber.shade600,
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.amber.shade600,
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.amber.shade600,
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.grey.shade400,
                    ),
                    Gap(10),
                    const Text(
                      '(30%)',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
                const Gap(10),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue.shade800,
                    ),
                    onPressed: (() {}),
                    child: const Text('Add to CWN'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
