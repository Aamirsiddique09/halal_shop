import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halal_shop/home_screen.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({Key? key}) : super(key: key);

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  // ignore: prefer_final_fields
  PageController _controller = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Container(
                color: const Color(0xFF153075),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SafeArea(
                      child: Container(
                        alignment: const Alignment(0, 0.5),
                        height: 203,
                        width: 278,
                        child: Text(
                          "Your holiday \nshopping delivered to Screen\n one  ",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: const Color(0xFFFAFBFD),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 66,
                      width: 282,
                      child: Text(
                        "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1",
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          color: const Color(0xFFB2BBCE),
                          height: 1.22,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 130),
                      width: 200,
                      height: 150,
                      child: const Icon(
                        Icons.add_shopping_cart,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color(0xFF153075),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SafeArea(
                      child: Container(
                        alignment: const Alignment(0, 0.5),
                        height: 203,
                        width: 278,
                        child: Text(
                          "Your holiday \nshopping delivered to Screen\n two  ",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: const Color(0xFFFAFBFD),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 66,
                      width: 282,
                      child: Text(
                        "There's something for everyone to enjoy with Sweet Shop Favourites Screen 2",
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          color: const Color(0xFFB2BBCE),
                          height: 1.22,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 130),
                      width: 200,
                      height: 150,
                      child: const Icon(
                        Icons.shopping_bag_sharp,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            alignment: const Alignment(-1, 0),
            margin: const EdgeInsets.all(30),
            child: DotsIndicator(
              dotsCount: 2,
              position: _currentPage,
              decorator: DotsDecorator(
                color: Colors.grey,
                activeColor: Colors.white,
                size: const Size.square(9.0),
                activeSize: const Size(27.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 620, left: 52),
              width: 260,
              height: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color(0xFFFAFBFD),
                ),
                // ignore: sized_box_for_whitespace
                child: Container(
                    width: 253,
                    height: 70,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Get Start",
                          style: TextStyle(
                            color: Colors.black, // Text color
                            fontSize: 16, // Adjust the font size as needed
                            fontWeight: FontWeight
                                .bold, // Adjust the font weight as needed
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.black,
                        ),
                      ],
                    )),
              )),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
