import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halal_shop/Entry_sturctures/rocommanded_products.dart';

// ignore: must_be_immutable
class NameAndLogo extends StatelessWidget {
  const NameAndLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 19),
          child: Text(
            'Hey , Halal',
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: const Color(0xFFFAFBFD),
              height: 1.43,
            ),
          ),
        ),
      ),
      trailing: SafeArea(
        child: Container(
            margin: const EdgeInsets.only(top: 0),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Jugar(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.shopping_bag_rounded,
                    color: Colors.white,
                    size: 21,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 2,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.only(right: 5, top: 2, bottom: 2),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF9B023),
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
