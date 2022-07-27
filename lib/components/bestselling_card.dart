import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BestCard extends StatelessWidget {
  const BestCard({
    Key? key,
  }) : super(key: key);

  get index => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 115,
      decoration: const BoxDecoration(
        color: Color(0xFFEFEBE9),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(10),
          Container(
            margin: const EdgeInsets.only(left: 5),
            width: 45,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.blue.shade900.withOpacity(0.4),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '\$20',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const Gap(4),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 1), // Shadow position
                ),
              ],
            ),
            child: Image.asset(
              'assets/images/vgcard.jpg',
              height: 50,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
          const Gap(10),
        ],
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  const TextCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Spacial gift',
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 10,
              color: Colors.amber.shade600,
            ),
            Icon(
              Icons.star,
              size: 10,
              color: Colors.amber.shade600,
            ),
            Icon(
              Icons.star,
              size: 10,
              color: Colors.amber.shade600,
            ),
            Icon(
              Icons.star,
              size: 10,
              color: Colors.amber.shade600,
            ),
            Icon(
              Icons.star,
              size: 10,
              color: Colors.grey.shade600,
            ),
            const Gap(10),
            const Text(
              '(644)',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}
