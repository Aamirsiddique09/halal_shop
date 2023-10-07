import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product {
  final String title;
  final String type;
  final String price;
  final String imageAssetPath;
  int counter;

  Product(this.title, this.type, this.price, this.imageAssetPath,
      {this.counter = 0});
}

class RecommendedProducts extends StatefulWidget {
  const RecommendedProducts({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RecommendedProductsState createState() => _RecommendedProductsState();
}

class _RecommendedProductsState extends State<RecommendedProducts> {
  final List<Product> products = [
    Product("Fresh Lemon", "Organic", "\$12", "lib/images/Lemon.jpg"),
    Product("Green Tea", "Organic", "\$06", "lib/images/Greentea.jpg"),
    Product("Coffee", "Creamy", "\$20", "lib/images/coffee.jpg"),
    Product("Milk Shake", "Fruits", "\$10", "lib/images/milkshake.jpg"),
  ];

  final List<Product> selectedProducts = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(
          children: products.map((product) {
            return ProductCard(
              product: product,
              selectedProducts: selectedProducts,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;
  final List<Product> selectedProducts;

  const ProductCard({
    super.key,
    required this.product,
    required this.selectedProducts,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128.0,
      height: 190.0,
      margin: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FB),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 70,
            child: Image.asset(product.imageAssetPath),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
          TodosScreen(
            todo: product,
            selectedProducts: selectedProducts,
          ),
        ],
      ),
    );
  }
}

class Jugar extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Jugar({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1,
    );
  }
}

class TodosScreen extends StatelessWidget {
  final Product todo;
  final List<Product> selectedProducts;

  const TodosScreen({
    super.key,
    required this.todo,
    required this.selectedProducts,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              todo.title,
              style: GoogleFonts.manrope(
                fontSize: 14.0,
                color: const Color(0xFF1E222B),
                height: 1.0,
              ),
            ),
            Text(
              todo.type,
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
              margin: const EdgeInsets.only(top: 1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 2, top: 5),
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
                  const Jugar(),
                  const SizedBox(width: 4.0),
                  Text(
                    todo.price,
                    style: GoogleFonts.manrope(
                      fontSize: 14.0,
                      color: const Color(0xFF3F3F3F),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!selectedProducts.contains(todo)) {
                        selectedProducts.add(todo);
                      }

                      int itemCount = selectedProducts.length;
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => CartView(
                                selectedProducts: selectedProducts,
                                itemCount: itemCount)),
                      );
                    },
                    child: const Icon(
                      Icons.add_circle_sharp,
                      size: 40,
                      color: Color(0xFF153075),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CartView extends StatefulWidget {
  final List<Product> selectedProducts;
  final int itemCount;

  // Add itemCount parameter

  const CartView({
    super.key,
    required this.selectedProducts,
    required this.itemCount, // Initialize itemCount in the constructor
  });

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    int itemCount = widget.itemCount;
    int count = 1;

    // Access the itemCount parameter

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                Positioned(
                  width: 395,
                  height: 417,
                  left: -15,
                  top: -123,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFBC6E), // Primary/Dark Yellow
                    ),
                  ),
                ),
                Positioned(
                  width: 376,
                  height: 50,
                  left: 0,
                  top: 242,
                  child: Container(
                    color: const Color(0xFFF9B023),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Use code ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              letterSpacing: 0,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '#HalalFood ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              letterSpacing: 0,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'at Checkouut ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              letterSpacing: 0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  width: 274,
                  height: 375,
                  left: -10,
                  top: -100,
                  child: Text(
                    '#',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w200,
                      fontSize: 300,
                      color: Color(0xFFF9B023),
                    ),
                  ),
                ),
                const Positioned(
                  width: 36,
                  height: 18,
                  left: 299,
                  top: 111,
                  child: Text(
                    'OFF!!',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: Color(0xFAFBFDFF),
                    ),
                  ),
                ),
                const Positioned(
                  width: 113,
                  height: 174,
                  left: 200,
                  top: 5,
                  child: Icon(
                    Icons.store,
                    size: 50,
                  ),
                ),
                const Positioned(
                  width: 231,
                  height: 138,
                  left: 113,
                  top: 104,
                  child: Text(
                    '25%',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w800,
                      fontSize: 110,
                      color: Color(0xFAFBFDFF),
                    ),
                  ),
                ),
                Positioned(
                  width: 40,
                  height: 40,
                  left: 24,
                  top: 45,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xF8F9FBFF),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
                Positioned(
                  width: 143,
                  height: 24,
                  left: 85,
                  top: 53,
                  child: Row(
                    children: [
                      const Text(
                        'Shopping Cart ', // Display the item count
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '($itemCount)',
                        style: const TextStyle(
                          fontFamily: 'Manrope',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 400,
              width: 400,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  final product = widget.selectedProducts[index];

                  return ListTile(
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(product.imageAssetPath),
                    ),
                    title: Text(product.title),
                    subtitle: Text(product.price),
                    trailing: SizedBox(
                      width: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFFE7ECF0)),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  count++;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${product.counter = count}',
                            style: const TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFFE7ECF0)),
                            child: IconButton(
                              onPressed: () {
                                if (product.counter > 1) {
                                  setState(() {
                                    product.counter--;
                                  });
                                }
                              },
                              icon: const Icon(
                                Icons.remove_sharp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: widget.selectedProducts.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
