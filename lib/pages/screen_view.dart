import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halal_shop/Entry_sturctures/deals_tow.dart';
import 'package:halal_shop/Entry_sturctures/delivery_time.dart';
import 'package:halal_shop/Entry_sturctures/discount_deal.dart';
import 'package:halal_shop/Entry_sturctures/fruits&tea.dart';
import 'package:halal_shop/Entry_sturctures/name_logo.dart';
import 'package:halal_shop/Entry_sturctures/rocommanded_products.dart';
import 'package:halal_shop/Entry_sturctures/search_box.dart';

class ScreenView extends StatefulWidget {
  const ScreenView({super.key});

  @override
  State<ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E2EE),
      body: Column(
        children: [
          //Section one (AppBar)
          Container(
            height: 302,
            width: double.infinity,
            color: const Color(0xFF153075),
            child: const Column(
              children: [
                //name and cart logo
                NameAndLogo(),
                //here we are add search box
                SearchBox(),
                //here we add Delivery Time
                DeliveryTime(),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      //Section  (Deals)
                      const DiscountDeals(),
                      Container(
                        width: 210,
                        height: 38,
                        margin: const EdgeInsets.only(top: 30, right: 100),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Recommended',
                          style: GoogleFonts.manrope(
                            fontSize: 30,
                            color: const Color(0xFF1E222B),
                            height:
                                1, // This controls line height, use 1 for default
                          ),
                        ),
                      ),
                      //Section 3(Recommended)
                      const RecommendedProducts(),
                      //Deal2 container
                      const Deals2(),
                      Container(
                        width: 300,
                        height: 38,
                        margin:
                            const EdgeInsets.only(top: 0, left: 2, bottom: 10),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Deals on Fruits & Tea',
                          style: GoogleFonts.manrope(
                            fontSize: 30,
                            color: const Color(0xFF1E222B),
                            height:
                                1, // This controls line height, use 1 for default
                          ),
                        ),
                      ),
                      const ProductListScreen(),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
