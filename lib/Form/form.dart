import 'package:flutter/material.dart';
import 'package:halal_shop/Catigories_structure/fish_catagroies.dart';

class FormInformation extends StatefulWidget {
  const FormInformation({
    Key? key,
  }) : super(key: key);

  @override
  State<FormInformation> createState() => _FormInformationState();
}

class _FormInformationState extends State<FormInformation> {
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController cvc = TextEditingController();
  bool isTextFieldFilled = false;

  @override
  void dispose() {
    name.dispose();
    date.dispose();
    cvc.dispose();
    super.dispose();
  }

  void checkTextField() {
    setState(() {
      isTextFieldFilled = name.text.isNotEmpty;
      isTextFieldFilled = number.text.isNotEmpty;
      isTextFieldFilled = date.text.isNotEmpty;
      isTextFieldFilled = cvc.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap the content in a SingleChildScrollView
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20, bottom: 30),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        'Add Card',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: const Text(
                  'CARD HOLDER NAME',
                  style: TextStyle(
                    color: Color(0xFF8891A5),
                    fontFamily: 'Manrope',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: TextField(
                  controller: name,
                  onChanged: (value) {
                    checkTextField();
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              ListTile(
                title: const Text(
                  'CARD NUMBER',
                  style: TextStyle(
                    color: Color(0xFF8891A5),
                    fontFamily: 'Manrope',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: TextField(
                  controller: number,
                  onChanged: (value) {
                    checkTextField();
                  },
                  decoration: const InputDecoration(
                    hintText: 'eg.0535\r3893\r6336\r09879',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 17, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'EXP DATE',
                          style: TextStyle(
                            color: Color(0xFF8891A5),
                            fontFamily: 'Manrope',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: TextField(
                            controller: date,
                            onChanged: (value) {
                              checkTextField();
                            },
                            decoration: const InputDecoration(
                              hintText: '10/23',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'CVC',
                          style: TextStyle(
                            color: Color(0xFF8891A5),
                            fontFamily: 'Manrope',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: TextField(
                            controller: cvc,
                            onChanged: (value) {
                              checkTextField();
                            },
                            decoration: const InputDecoration(
                              hintText: '545',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 342,
                height: 341,
                decoration: const BoxDecoration(
                    color: Color(0xFFE7ECF0),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                margin: const EdgeInsets.only(top: 112),
                child: SafeArea(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text('Subtotal'),
                              trailing: Text('\$35.45'),
                            ),
                            ListTile(
                              title: Text('Delivery'),
                              trailing: Text('\$194.5'),
                            ),
                            ListTile(
                              title: Text('Total'),
                              trailing: Text('\$666'),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: isTextFieldFilled
                            ? () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.black54,
                                      title: const Center(
                                        child: Text(
                                          'Successful',
                                          style: TextStyle(
                                            fontFamily: 'Manrope',
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w900,
                                            height: 1.5,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      content: Container(
                                        width: 50,
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'Thank you for shopping',
                                          style: TextStyle(
                                            fontFamily: 'Manrope',
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                              MaterialPageRoute(
                                                builder: (ctx) {
                                                  return const Fish();
                                                },
                                              ),
                                            );
                                          },
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            : null,
                        child: Container(
                          margin: const EdgeInsets.only(top: 40),
                          alignment: Alignment.center,
                          width: 270,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFF153075),
                          ),
                          child: const Text(
                            'Make a Payment',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
