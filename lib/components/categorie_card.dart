import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Categorie extends StatelessWidget {
  const Categorie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.blue.shade900.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  'assets/icons/gift-box.png',
                  width: 70,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Spacer(),
              Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.teal.shade300.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  'assets/icons/gift.png',
                  width: 70,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
          Gap(10),
          Row(
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.pink.shade500.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  'assets/icons/chocolate.png',
                  width: 70,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Spacer(),
              Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.purple.shade300.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  'assets/icons/juice.png',
                  width: 70,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
          Gap(10),
          Row(
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  'assets/icons/hamburger.png',
                  width: 70,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Spacer(),
              Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.yellow.shade500.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  'assets/icons/coupon.png',
                  width: 70,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
