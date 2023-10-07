// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class NameAndSearchBox extends StatelessWidget {
  const NameAndSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25, left: 20),
                child: Text(
                  "Hey,Halal",
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: const Color(0xFFFAFBFD),
                    height: 1.43,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 140),
                child: const Icon(
                  Icons.search_sharp,
                  color: Color(0xFFF8F9FB),
                  size: 25,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 28, left: 20),
                child: const Icon(
                  Icons.shopping_bag_rounded,
                  color: Color(0xFFF8F9FB),
                  size: 25,
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: const Text(
              'Shop',
              style: TextStyle(
                fontFamily: 'Manrope', // Font family: Manrope
                fontWeight: FontWeight.normal, // Weight: 300
                fontSize: 50.0, // Size: 50px
                height: 62.55 / 50.0,
                color: Colors.white, // Line height: 62.55px / 50px
              ),
              // Align text to the top
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.only(left: 20, top: 0),
            child: const Text(
              'By Category',
              style: TextStyle(
                fontFamily: 'Manrope', // Font family: Manrope
                fontWeight: FontWeight.w800, // Weight: 300
                fontSize: 50.0, // Size: 50px
                height: 62.55 / 50.0,
                color: Colors.white, // Line height: 62.55px / 50px
              ),
              // Align text to the top
            ),
          ),
        ],
      ),
    );
  }
}
