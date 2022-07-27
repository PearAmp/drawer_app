import 'package:drawer_app/components/bestselling_card.dart';
import 'package:drawer_app/components/birthday_card.dart';
import 'package:drawer_app/components/categorie_card.dart';
import 'package:drawer_app/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.blue.shade800,
        title: const Text('Product Detail'),
      ),
      drawer: const DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const Gap(20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 4,
                    offset: Offset(4, 5), // Shadow position
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      hintText: 'Search'),
                ),
              ),
            ),
            const Gap(30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Today Trending',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Gap(10),
                Text(
                  '4 March',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Gap(20),
            SizedBox(
              height: 150,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: const [
                        BirthdayCard(),
                      ],
                    ),
                    Gap(10),
                    Column(
                      children: const [
                        BirthdayCard(),
                      ],
                    ),
                    Gap(10),
                    Column(
                      children: const [
                        BirthdayCard(),
                      ],
                    ),
                    Gap(10),
                    Column(
                      children: const [
                        BirthdayCard(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Gap(30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text('Best Selling',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Gap(10),
                Text(
                  'This week',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Gap(20),
            SizedBox(
              height: 150,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        BestCard(),
                        TextCard(),
                      ],
                    ),
                    const Gap(10),
                    Column(
                      children: const [
                        BestCard(),
                        TextCard(),
                      ],
                    ),
                    const Gap(10),
                    Column(
                      children: const [
                        BestCard(),
                        TextCard(),
                      ],
                    ),
                    const Gap(10),
                    Column(
                      children: const [
                        BestCard(),
                        TextCard(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Gap(30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text('Top categorie',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            Gap(20),
            Categorie()
          ],
        ),
      ),
    );
  }
}
