import 'package:flutter/material.dart';

class MoreOtion extends StatelessWidget {
  const MoreOtion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 130,
          margin: const EdgeInsets.only(bottom: 20),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color(0xFF153075),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: const ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 30,
              ),
            ),
            title: Text(
              'User',
              style: TextStyle(
                fontFamily: 'Manrope', // Font family: Manrope
                fontWeight: FontWeight.w800, // Weight: 300
                fontSize: 20.0, // Size: 50px
                height: 2.05,
                color: Colors.white, //
              ),
            ),
            subtitle: Text(
              'xyz@gmail.com',
              style: TextStyle(
                fontFamily: 'Manrope', // Font family: Manrope
                fontWeight: FontWeight.w300, // Weight: 300
                fontSize: 10.0, // Size: 50px
                height: 1.05,
                color: Colors.white,
              ),
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ),
        const ListTile(
          leading: Text(
            'Cart',
            style: TextStyle(
              fontFamily: 'Manrope', // Font family: Manrope
              fontWeight: FontWeight.w500, // Weight: 300
              fontSize: 20.0, // Size: 50px
              height: 2.05,
              color: Color(0xFF1E222B), //
            ),
          ),
          trailing: Icon(Icons.shopping_cart),
        ),
        const Divider(
          height: 30,
        ),
        const ListTile(
          leading: Text(
            'Delivery Adress',
            style: TextStyle(
              fontFamily: 'Manrope', // Font family: Manrope
              fontWeight: FontWeight.w500, // Weight: 300
              fontSize: 20.0, // Size: 50px
              height: 2.05,
              color: Color(0xFF1E222B), //
            ),
          ),
          trailing: Icon(Icons.location_city),
        ),
        const Divider(
          height: 30,
        ),
        const ListTile(
          leading: Text(
            'Payment Method',
            style: TextStyle(
              fontFamily: 'Manrope', // Font family: Manrope
              fontWeight: FontWeight.w500, // Weight: 300
              fontSize: 20.0, // Size: 50px
              height: 2.05,
              color: Color(0xFF1E222B), //
            ),
          ),
          trailing: Icon(Icons.payments),
        ),
        const Divider(
          height: 30,
        ),
        const ListTile(
          leading: Text(
            'Contact us',
            style: TextStyle(
              fontFamily: 'Manrope', // Font family: Manrope
              fontWeight: FontWeight.w500, // Weight: 300
              fontSize: 20.0, // Size: 50px
              height: 2.05,
              color: Color(0xFF1E222B), //
            ),
          ),
          trailing: Icon(Icons.contact_emergency),
        )
      ],
    );
  }
}
