import 'package:flutter/material.dart';
import 'package:halal_shop/Catigories_structure/NameAndLogo.dart';
import 'package:halal_shop/Catigories_structure/fish_catagroies.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E2EE),
      body: Column(
        children: [
          //Section one (AppBar)
          Container(
            height: 300,
            color: const Color(0xFF153075),
            child: const Column(
              children: [
                //name and cart logo
                NameAndSearchBox(),
                //here we are add search box
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Section  (Deals)
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            width: 150,
                            height: 180,
                            decoration: BoxDecoration(
                                color: const Color(0xFFF8F9FB),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 150,
                                    height: 70,
                                    margin: const EdgeInsets.only(top: 15),
                                    child: Image.asset('lib/images/fish.jpg')),
                                const Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => const Fish(),
                                    ));
                                  },
                                  child: const Column(
                                    children: [
                                      Text(
                                        'Fishes',
                                        style: TextStyle(
                                          fontFamily:
                                              'Manrope', // Font family: Manrope
                                          fontWeight:
                                              FontWeight.w800, // Weight: 300
                                          fontSize: 20.0, // Size: 50px
                                          height: 2.05,
                                          color: Color(
                                              0xFF1E222B), // Line height: 62.55px / 50px
                                        ),
                                      ),
                                      Text(
                                        'From Sea',
                                        style: TextStyle(
                                          fontFamily:
                                              'Manrope', // Font family: Manrope
                                          fontSize: 15.0, // Size: 50px
                                          color: Color(
                                              0xFF1E222B), // Line height: 62.55px / 50px
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            width: 150,
                            height: 180,
                            decoration: BoxDecoration(
                                color: const Color(0xFFF8F9FB),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 200,
                                    height: 70,
                                    margin: const EdgeInsets.only(top: 15),
                                    child: Image.asset('lib/images/meat.jpg')),
                                const Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Column(
                                    children: [
                                      Text(
                                        'Meats',
                                        style: TextStyle(
                                          fontFamily:
                                              'Manrope', // Font family: Manrope
                                          fontWeight:
                                              FontWeight.w800, // Weight: 300
                                          fontSize: 20.0, // Size: 50px
                                          height: 2.05,
                                          color: Color(
                                              0xFF1E222B), // Line height: 62.55px / 50px
                                        ),
                                      ),
                                      Text(
                                        'Organic',
                                        style: TextStyle(
                                          fontFamily:
                                              'Manrope', // Font family: Manrope
                                          fontSize: 15.0, // Size: 50px
                                          color: Color(
                                              0xFF1E222B), // Line height: 62.55px / 50px
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20, left: 20),
                            width: 150,
                            height: 180,
                            decoration: BoxDecoration(
                                color: const Color(0xFFF8F9FB),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 160,
                                    height: 70,
                                    margin: const EdgeInsets.only(top: 15),
                                    child: Image.asset(
                                        'lib/images/vegetable.jpg')),
                                const Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Column(
                                    children: [
                                      Text(
                                        'Vegetables',
                                        style: TextStyle(
                                          fontFamily:
                                              'Manrope', // Font family: Manrope
                                          fontWeight:
                                              FontWeight.w800, // Weight: 300
                                          fontSize: 20.0, // Size: 50px
                                          height: 2.05,
                                          color: Color(
                                              0xFF1E222B), // Line height: 62.55px / 50px
                                        ),
                                      ),
                                      Text(
                                        'Organic',
                                        style: TextStyle(
                                          fontFamily:
                                              'Manrope', // Font family: Manrope
                                          fontSize: 15.0, // Size: 50px
                                          color: Color(
                                              0xFF1E222B), // Line height: 62.55px / 50px
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20, left: 20),
                            width: 150,
                            height: 180,
                            decoration: BoxDecoration(
                                color: const Color(0xFFF8F9FB),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 160,
                                    height: 70,
                                    margin: const EdgeInsets.only(top: 15),
                                    child:
                                        Image.asset('lib/images/fruits.jpg')),
                                const Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Column(
                                    children: [
                                      Text(
                                        'Fruits',
                                        style: TextStyle(
                                          fontFamily:
                                              'Manrope', // Font family: Manrope
                                          fontWeight:
                                              FontWeight.w800, // Weight: 300
                                          fontSize: 20.0, // Size: 50px
                                          height: 2.05,
                                          color: Color(
                                              0xFF1E222B), // Line height: 62.55px / 50px
                                        ),
                                      ),
                                      Text(
                                        'Fresh & Organic',
                                        style: TextStyle(
                                          fontFamily:
                                              'Manrope', // Font family: Manrope
                                          fontSize: 15.0, // Size: 50px
                                          color: Color(
                                              0xFF1E222B), // Line height: 62.55px / 50px
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 20, left: 20, bottom: 20),
                            width: 150,
                            height: 180,
                            decoration: BoxDecoration(
                                color: const Color(0xFFF8F9FB),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 160,
                                    height: 70,
                                    margin: const EdgeInsets.only(top: 15),
                                    child: Image.asset(
                                        'lib/images/teaandcoffee.jpg')),
                                const Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Column(
                                    children: [
                                      Text(
                                        'Tea & Coffee',
                                        style: TextStyle(
                                          fontFamily:
                                              'Manrope', // Font family: Manrope
                                          fontWeight:
                                              FontWeight.w800, // Weight: 300
                                          fontSize: 20.0, // Size: 50px
                                          height: 2.05,
                                          color: Color(
                                              0xFF1E222B), // Line height: 62.55px / 50px
                                        ),
                                      ),
                                      Text(
                                        'Organic',
                                        style: TextStyle(
                                          fontFamily:
                                              'Manrope', // Font family: Manrope
                                          fontSize: 15.0, // Size: 50px
                                          color: Color(
                                              0xFF1E222B), // Line height: 62.55px / 50px
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 20, left: 20, bottom: 20),
                            width: 150,
                            height: 180,
                            decoration: BoxDecoration(
                                color: const Color(0xFFF8F9FB),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 160,
                                    height: 70,
                                    margin: const EdgeInsets.only(top: 15),
                                    child:
                                        Image.asset('lib/images/cookies.jpg')),
                                const Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Column(
                                    children: [
                                      Text(
                                        'Cookies',
                                        style: TextStyle(
                                          fontFamily:
                                              'Manrope', // Font family: Manrope
                                          fontWeight:
                                              FontWeight.w800, // Weight: 300
                                          fontSize: 20.0, // Size: 50px
                                          height: 2.05,
                                          color: Color(
                                              0xFF1E222B), // Line height: 62.55px / 50px
                                        ),
                                      ),
                                      Text(
                                        'Bakers',
                                        style: TextStyle(
                                          fontFamily:
                                              'Manrope', // Font family: Manrope
                                          fontSize: 15.0, // Size: 50px
                                          color: Color(
                                              0xFF1E222B), // Line height: 62.55px / 50px
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
