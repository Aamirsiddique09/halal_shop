import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halal_shop/Catigories_structure/fish_popular.dart';

class Fish extends StatefulWidget {
  const Fish({Key? key}) : super(key: key);

  @override
  State<Fish> createState() => _FishState();
}

class _FishState extends State<Fish> {
  List<String> item = [
    'Popular',
    'Low Price',
    'Small Fishes',
    'Big Fishes',
    'High Price',
    'Deals'
  ];
  int current = 0;

  // Create a list of widgets for the tab content
  final List<Widget> tabContents = [
    const FishPopular(
        name: 'Rohu',
        title: 'Organic',
        price: '30',
        imgPath: 'lib/images/rahu.jpg',
        name2: 'Surmai',
        title2: 'Organic',
        price2: '50',
        imgPath2: 'lib/images/surmahi.jpg',
        name3: 'Katla',
        title3: 'Organic',
        price3: '35',
        imgPath3: 'lib/images/katla.jpg',
        name4: 'Hilsa',
        title4: 'Organic',
        price4: '37',
        imgPath4: 'lib/images/hilsa.jpg'),
    const Center(
      child: FishPopular(
          name: 'Mackerel ',
          title: 'Organic',
          price: '10',
          imgPath: 'lib/images/Mackerel.jpg',
          name2: 'Catfish ',
          title2: 'Organic',
          price2: '12',
          imgPath2: 'lib/images/Catfish.jpg',
          name3: 'Tilapia',
          title3: 'Organic',
          price3: '15',
          imgPath3: 'lib/images/Tilapia.jpg',
          name4: 'Silver Carp',
          title4: 'Organic',
          price4: '17',
          imgPath4: 'lib/images/SilverCarp.jpg'),
    ),
    const FishPopular(
        name: 'Hilsa',
        title: 'Organic',
        price: '37',
        imgPath: 'lib/images/hilsa.jpg',
        name2: 'Katla',
        title2: 'Organic',
        price2: '35',
        imgPath2: 'lib/images/katla.jpg',
        name3: 'Catfish',
        title3: 'Organic',
        price3: '12',
        imgPath3: 'lib/images/Catfish.jpg',
        name4: 'Silver Carp',
        title4: 'Organic',
        price4: '17',
        imgPath4: 'lib/images/SilverCarp.jpg'),
    const Center(child: Text('Big Fishes Content')),
    const Center(child: Text('High Price Content')),
    const Center(child: Text('Deals Content')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF153075),
        title: Text(
          'Hey, Halal',
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: const Color(0xFFFAFBFD),
            height: 1.43,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Icon(
              Icons.search_sharp,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Icon(
              Icons.shopping_bag_rounded,
            ),
          ),
        ],
      ),
      body: Container(
        color: const Color(0xFFE0E2EE),
        margin: const EdgeInsets.all(5.0),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: item.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.all(5.0),
                          width: 80,
                          height: 45,
                          decoration: BoxDecoration(
                            color: (current == index)
                                ? Colors.amber
                                : Colors.white,
                            borderRadius: (current == index)
                                ? BorderRadius.circular(10)
                                : BorderRadius.circular(15),
                            border: (current == index)
                                ? Border.all(color: Colors.amber, width: 2)
                                : Border.all(color: Colors.grey, width: 1),
                          ),
                          child: Center(
                            child: Text(
                              item[index],
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color: current == index
                                    ? Colors.black
                                    : Colors.grey,
                                height: 1.43,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                          visible: current == index,
                          child: Container(
                            width: 5,
                            height: 5,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                          ))
                    ],
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: double.infinity,
              height: 500,
              child: tabContents[
                  current], // Display the content of the selected tab
            )
          ],
        ),
      ),
    );
  }
}
