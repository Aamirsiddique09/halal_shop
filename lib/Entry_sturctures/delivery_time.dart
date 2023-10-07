import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryTime extends StatelessWidget {
  const DeliveryTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 120),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "DELIVERY TO",
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w800,
                      fontSize: 11.0,
                      color: Colors.grey,
                      height: 1.5,
                      letterSpacing: 0.02,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 2),
                  child: Row(
                    children: [
                      Text(
                        "Green Way 3000, Sylhet",
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0,
                          color: const Color(0xFFF8F9FB),
                          height: 1.26,
                          letterSpacing: 0.02,
                        ),
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xFFF8F9FB),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                margin: const EdgeInsets.only(right: 20),
                child: Text(
                  "WHITHIN",
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800,
                    fontSize: 11.0,
                    color: Colors.grey,
                    height: 1.5,
                    letterSpacing: 0.02,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(right: 5),
                child: Row(
                  children: [
                    Text(
                      "1 Hour",
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w800,
                        fontSize: 14.0,
                        color: const Color(0xFFF8F9FB),
                        height: 1.26,
                        letterSpacing: 0.02,
                      ),
                    ),
                    const SizedBox(
                      width: 3.0,
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xFFF8F9FB),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
