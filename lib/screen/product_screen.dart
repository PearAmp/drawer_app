import 'package:drawer_app/components/bestselling_card.dart';
import 'package:drawer_app/components/birthday_card.dart';
import 'package:drawer_app/components/categorie_card.dart';
import 'package:drawer_app/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
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
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
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
            Gap(20),
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
            Gap(20),
            SizedBox(
                height: 150,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      5,
                      (index) => BirthdayCard(),
                    ),
                  ),
                )),
            Gap(20),
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
            Gap(20),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                      // วิธีที่ 2
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (_, index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BestCard(),
                                    TextCard(),
                                  ],
                                ),
                              ))),
                ],
              ),
            ),
            Gap(20),
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
      )),
    );
  }
}
