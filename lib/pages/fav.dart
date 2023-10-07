import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halal_shop/Catigories_structure/fish_popular.dart';

class Favorite extends StatefulWidget {
  final List<Product> selectedProducts;
  final int itemCount;
  final String price;

  const Favorite({
    Key? key, // Add this key parameter
    required this.selectedProducts,
    required this.itemCount,
    required this.price,
  }) : super(key: key); // Use the key parameter here

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFE0E2EE),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              width: 600,
              height: 250,
              color: const Color(0xFF153075),
              alignment: Alignment.bottomCenter,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Favorite Cart',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.white,
                      height: 1.43,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    size: 30,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  final product = widget.selectedProducts[index];
                  return Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white30),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 12, bottom: 5),
                                  width: 120,
                                  height: 80,
                                  child: Image(
                                      image:
                                          AssetImage(product.imageAssetPath)),
                                ),
                                Text(
                                  product.title,
                                  style: GoogleFonts.manrope(
                                    fontSize: 14.0,
                                    color: const Color(0xFF1E222B),
                                    height: 1.0,
                                  ),
                                ),
                                Text(
                                  product.type,
                                  style: GoogleFonts.manrope(
                                    fontSize: 12.0,
                                    letterSpacing: 0.02,
                                    color: const Color(0xFF616A7D),
                                    height: 1.4,
                                  ),
                                ),
                                Container(
                                  height: 25,
                                  width: 110,
                                  margin: const EdgeInsets.only(top: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white30,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 2, top: 5),
                                            child: Text(
                                              'Unit',
                                              style: GoogleFonts.manrope(
                                                fontSize: 11.0,
                                                color: const Color(0xFF8891A5),
                                                height: 1.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 4.0),
                                      Text(
                                        product.price,
                                        style: GoogleFonts.manrope(
                                          fontSize: 14.0,
                                          color: const Color(0xFF3F3F3F),
                                          height: 1.5,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: widget.selectedProducts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
