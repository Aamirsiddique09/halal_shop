import 'package:flutter/material.dart';

class Deals2 extends StatelessWidget {
  const Deals2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 500, // Set the width as needed
          height: 160,
          margin: const EdgeInsets.only(top: 20), // Set the height as needed
          color: const Color(0xFFE0E2EE), // Use the color code #2A4BA0
          child: Stack(
            children: [
              Positioned(
                left: 10,
                top: 0,
                child: Image.asset('lib/images/Ellip.png'),
              ),
              Positioned(
                left: 320,
                top: 10,
                child: Image.asset('lib/images/Ellip2.png'),
              ),
              Positioned(
                left: 100,
                top: 30,
                child: Image.asset('lib/images/Ellip2.png'),
              ),
              Positioned(
                left: 160,
                top: 100,
                child: Image.asset('lib/images/Ellip3.png'),
              ),
              Positioned(
                left: 20,
                top: 10,
                child: Container(
                  width: 140,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '346 ',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              height: 1.5, //
                            ),
                          ),
                          Text(
                            'USD',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              height: 1.5, //
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Your total savings',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 1.43, // Line height in terms of the font size
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 190,
                top: 10,
                child: Container(
                  width: 143,
                  height: 90,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 114, 121, 126),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '215 ',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              height: 1.5, //
                            ),
                          ),
                          Text(
                            'HRS',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              height: 1.5, //
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Your time saved',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 1.43, // Line height in terms of the font size
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 339,
                top: 50,
                child: Image.asset('lib/images/Ellip3.png'),
              ),
              Positioned(
                left: 362,
                top: 10,
                child: Container(
                  width: 140,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SELL',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              height: 1.5, //
                            ),
                          ),
                          Text(
                            '50%',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              height: 1.5, //
                            ),
                          )
                        ],
                      ),
                      Text(
                        'First come fist take benifit',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 1.43, // Line height in terms of the font size
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
