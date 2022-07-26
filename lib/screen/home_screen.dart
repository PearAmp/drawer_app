import 'package:drawer_app/components/birthday_card.dart';
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
        title: Text('Hi'),
      ),
      drawer: DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Gap(20),
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
            Gap(30),
            Container(
              child: Row(
                children: [
                  Text('Today Trending'),
                  Text('4 March'),
                ],
              ),
            ),
            Container(),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    const BirthdayCard(),
                  ],
                ),
                Gap(20),
                Column(
                  children: [
                    BirthdayCard(),
                  ],
                ),
                Column(
                  children: [
                    BirthdayCard(),
                  ],
                ),
                Column(
                  children: [
                    BirthdayCard(),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
