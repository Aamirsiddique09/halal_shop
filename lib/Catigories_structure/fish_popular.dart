import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halal_shop/Form/delivery_adress.dart';
import 'package:halal_shop/pages/fav.dart';

class Product {
  final String title;
  final String type;
  final String price;
  final String imageAssetPath;
  int counter;

  Product(this.title, this.type, this.price, this.imageAssetPath,
      {this.counter = 0});
}

class FishPopular extends StatefulWidget {
  final String name;
  final String title;
  final String price;
  final String imgPath;
  final String name2;
  final String title2;
  final String price2;
  final String imgPath2;
  final String name3;
  final String title3;
  final String price3;
  final String imgPath3;
  final String name4;
  final String title4;
  final String price4;
  final String imgPath4;
  @override
  const FishPopular({
    super.key,
    required this.name,
    required this.title,
    required this.price,
    required this.imgPath,
    required this.name2,
    required this.title2,
    required this.price2,
    required this.imgPath2,
    required this.name3,
    required this.title3,
    required this.price3,
    required this.imgPath3,
    required this.name4,
    required this.title4,
    required this.price4,
    required this.imgPath4,
  });

  @override
  State<FishPopular> createState() => _FishPopularState();
}

class _FishPopularState extends State<FishPopular> {
  late List<Product> products = [
    Product(widget.name, widget.title, widget.price, widget.imgPath),
    Product(widget.name2, widget.title2, widget.price2, widget.imgPath2),
  ];

  late List<Product> secondProducts = [
    Product(widget.name3, widget.title3, widget.price3, widget.imgPath3),
    Product(widget.name4, widget.title4, widget.price4, widget.imgPath4),
  ];

  final List<Product> selectedProducts = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ...secondProducts.map((product) {
                return ProductCard(
                  product: product,
                  selectedProducts: selectedProducts,
                );
              }).toList(),
            ],
          ),
          Row(
            children: [
              ...products.map((product) {
                return ProductCard(
                  product: product,
                  selectedProducts: selectedProducts,
                );
              }).toList(),
            ],
          ),
          const SizedBox(
            width: 2,
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 10),
            child: Text(
              "Developed by Aamir Siddique",
              style: GoogleFonts.manrope(
                fontSize: 11.0,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF8891A5),
                height: 1.0,
              ),
            ),
          ),
          const SizedBox(
            width: 2,
            height: 20,
          ),
        ],
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
      width: 150,
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
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 0),
                      child: Text(
                        todo.title,
                        style: GoogleFonts.manrope(
                          fontSize: 14.0,
                          color: const Color(0xFF1E222B),
                          height: 1.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(
                        todo.type,
                        style: GoogleFonts.manrope(
                          fontSize: 12.0,
                          letterSpacing: 0.02,
                          color: const Color(0xFF616A7D),
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: () {
                      if (!selectedProducts.contains(todo)) {
                        selectedProducts.add(todo);
                      }
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SelectScreen(
                          selectedProducts: [
                            todo
                          ], // Pass the selected product correctly
                          product: todo, // Pass the product correctly
                          itemCount: 0, price: todo.price,
                        ),
                      ));
                    },
                    child: Container(
                      alignment: Alignment.topRight,
                      child: const Icon(
                        Icons.add_circle_sharp,
                        size: 42,
                        color: Color(0xFF153075),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 25,
              width: 90,
              margin: const EdgeInsets.only(top: 1, left: 5),
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
                    height: 10,
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

class SelectScreen extends StatefulWidget {
  final List<Product> selectedProducts;
  final Product product;
  final int itemCount;
  final String price;

  const SelectScreen({
    super.key,
    required this.selectedProducts,
    required this.product,
    required this.itemCount,
    required this.price,
  });

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50, bottom: 19),
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: const Color(0xFFF8F9FB),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    )),
                title: Text(
                  widget.product.title,
                  style: const TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    height: 1.5,
                    letterSpacing: 0.0,
                  ),
                ),
                trailing: const Icon(
                  color: Colors.black,
                  (Icons.shopping_bag_rounded),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(widget.product.imageAssetPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Color(0xFFF9B023),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Color(0xFFE4E4E4),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Color(0xFFE4E4E4),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 3),
                  width: 340,
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE7ECF0),
                    borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(40),
                        topEnd: Radius.circular(40)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 22),
                        child: ListTile(
                          title: const Text(
                            'Thin Choise Top ',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(
                                  0xFF000000), // This is the equivalent of "#000000"
                              height:
                                  1.35, // This is equivalent to 27sp line height
                            ),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                  if (!widget.selectedProducts
                                      .contains(widget.product)) {
                                    widget.selectedProducts.add(widget.product);
                                  }

                                  int itemCount =
                                      widget.selectedProducts.length;
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Favorite(
                                            selectedProducts: [widget.product],
                                            itemCount: itemCount,
                                            price: widget.price,
                                          )));
                                });
                              },
                              icon: Icon(
                                Icons.favorite,
                                size: 35,
                                color: isFavorite ? Colors.red : Colors.grey,
                              )),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            const Text(
                              '\$34.70',
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(
                                    0xFF2A4BA0), // This is the equivalent of "#000000"
                                height:
                                    1.35, // This is equivalent to 27sp line height
                              ),
                            ),
                            const Text(
                              '/KG',
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(
                                    0xFF2A4BA0), // This is the equivalent of "#000000"
                                height:
                                    1.35, // This is equivalent to 27sp line height
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 30,
                              margin: const EdgeInsets.only(left: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFF2A4BA0)),
                              child: const Center(
                                child: Text(
                                  '\$22.04 OFF',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              margin: const EdgeInsets.only(left: 33),
                              child: const Text(
                                'Reg: \$56.70 USD',
                                style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 9, left: 6),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.star_rate_sharp,
                              color: Color(0xFFF9B023),
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Color(0xFFF9B023),
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Color(0xFFF9B023),
                            ),
                            Icon(
                              Icons.star_rate_sharp,
                              color: Color(0xFFF9B023),
                            ),
                            Icon(
                              Icons.star_half,
                              color: Color(0xFFF9B023),
                            ),
                            Text(
                              '110 Reviews',
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 15, right: 260, bottom: 1),
                        child: const Text(
                          'Details',
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w800,
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        width: 310,
                        height: 110,
                        alignment: Alignment.center,
                        child: const Padding(
                          padding: EdgeInsets.all(7),
                          child: Text(
                            'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      const ListTile(
                        title: Text(
                          'Nutritional facts',
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 310,
                        child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                      const ListTile(
                        title: Text(
                          'Reviews',
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color(0xFF2A4BA0),
                                )),
                            child: TextButton(
                                onPressed: () {
                                  if (!widget.selectedProducts
                                      .contains(widget.product)) {
                                    widget.selectedProducts.add(widget.product);
                                  }

                                  int itemCount =
                                      widget.selectedProducts.length;
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => CartView(
                                            selectedProducts: [widget.product],
                                            itemCount: itemCount,
                                            price: widget.price,
                                          )));
                                },
                                child: const Center(
                                  child: Text(
                                    'Add To Cart',
                                    style: TextStyle(
                                      color: Color(0xFF2A4BA0),
                                    ),
                                  ),
                                )),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF2A4BA0),
                                border: Border.all(
                                  color: Colors.white,
                                )),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const AddressForm()));
                                },
                                child: const Center(
                                  child: Text(
                                    'Buy Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CartView extends StatefulWidget {
  final List<Product> selectedProducts;
  final int itemCount;

  final String price;

  // Add itemCount parameter

  const CartView({
    super.key,
    required this.selectedProducts,
    required this.itemCount,
    required this.price, // Initialize itemCount in the constructor
  });

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  int calculateSubtotal() {
    int subtotal = 0;
    for (Product product in widget.selectedProducts) {
      int productPrice = int.parse(product.price);
      int productCounter = (product.counter);
      subtotal += productPrice * productCounter;
    }
    return subtotal;
  }

  @override
  Widget build(BuildContext context) {
    int itemCount = widget.itemCount;
    int subtotal = calculateSubtotal();
    int delivery = (int.parse(widget.price) * 0.1).toInt();
    // ignore: unused_local_variable
    int total = 0;
    total = subtotal + delivery;
    return Scaffold(
      body: SizedBox(
        child: Column(
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
                                    product.counter++;
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
                              '${product.counter}',
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
                                  if (product.counter > 0) {
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
            ),
            Container(
              margin: const EdgeInsets.only(top: 3),
              width: 340,
              height: 220,
              decoration: const BoxDecoration(
                color: Color(0xFFE7ECF0),
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(40), topEnd: Radius.circular(40)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const ListTile(
                      title: Text(
                        'Subtotal',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(
                              0xFF616A7D), // This is the equivalent of "#000000"
                          height: 2, // This is equivalent to 27sp line height
                        ),
                      ),
                      trailing: Text(
                        '\$35.96',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(
                              0xFF1E222B), // This is the equivalent of "#000000"
                          height: 2, // This is equivalent to 27sp line height
                        ),
                      ),
                    ),
                    const ListTile(
                      title: Text(
                        'Delivery',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF616A7D),
                        ),
                      ),
                      trailing: Text(
                        '\$35.96',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF1E222B),
                        ),
                      ),
                    ),
                    const ListTile(
                      title: Text(
                        'Total',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF616A7D),
                        ),
                      ),
                      trailing: Text(
                        '\$',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF1E222B),
                        ),
                      ),
                    ),
                    Container(
                      width: 240,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF2A4BA0),
                          border: Border.all(
                            color: Colors.white,
                          )),
                      child: TextButton(
                          onPressed: () {},
                          child: const Center(
                            child: Text(
                              'Proceed  To checkout',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
