import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscountDeals extends StatelessWidget {
  const DiscountDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Deals(
            off: "50%\rOFF",
            deal: "On first 3 orders",
            num: 1,
          ),
          Deals(
            off: '10%\r0FF',
            deal: 'On first 1 orders',
            num: 0,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Deals(
              off: '20%\rOFF',
              deal: 'On first 2 orders',
              num: 1,
            ),
          )
        ],
      ),
    );
  }
}

class Deals extends StatelessWidget {
  final String off;
  final String deal;
  final int num;
  const Deals({
    super.key,
    required this.off,
    required this.deal,
    required this.num,
  });
  col() {
    var col = (num == 1)
        ? const Color(0xFFF9B023)
        : const Color.fromARGB(255, 252, 184, 106);
    return col;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 6, left: 10),
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: col(),
        ),
        child: Row(children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.image_rounded),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, top: 40),
            width: 120,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  'Get',
                  style: GoogleFonts.manrope(
                    fontSize: 20,
                    color: Colors.white,
                    height: 1.35,
                  ),
                ),
                Text(
                  off,
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800,
                    fontSize: 26,
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
                Text(
                  deal,
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800,
                    fontSize: 13,
                    color: Colors.white,
                    height: 1.33,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                )
              ],
            ),
          ),
        ]));
  }
}
