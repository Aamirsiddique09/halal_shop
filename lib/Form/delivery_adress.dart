import 'package:flutter/material.dart';
import 'package:halal_shop/Form/form.dart';

class Todo {
  final String homeAddress;
  final String officeAddress;

  Todo({
    required this.homeAddress,
    required this.officeAddress,
  });
}

class AddressSender {
  void sendAddresses(Todo todo) {
    String homeAddress = todo.homeAddress;
    String officeAddress = todo.officeAddress;

    // Do something with the addresses, such as sending them to a server, storing in a database, etc.
    // ignore: avoid_print
    print('Home Address: $homeAddress');
    // ignore: avoid_print
    print('Office Address: $officeAddress');
  }
}

class AddressForm extends StatefulWidget {
  const AddressForm({super.key});

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  final TextEditingController homeController = TextEditingController();
  final TextEditingController officeController = TextEditingController();
  List<TextEditingController> additionalControllers = [];

  bool isEditingHome = false;
  bool isEditingOffice = false;

  Color getHomeBorderColor() {
    return isEditingHome ? const Color(0xFFF9B023) : Colors.grey;
  }

  Color getOfficeBorderColor() {
    return isEditingOffice ? const Color(0xFFF9B023) : Colors.grey;
  }

  void toggleEditing(bool isEditing) {
    setState(() {
      isEditing = !isEditing;
      if (!isEditing) {
        // Save the edited address when switching from editing to viewing
        String homeAddress = homeController.text;
        String officeAddress = officeController.text;
        Todo todo = Todo(
          homeAddress: homeAddress,
          officeAddress: officeAddress,
        );
        AddressSender sender = AddressSender();
        sender.sendAddresses(todo);
      }
    });
  }

  void addNewTextField() {
    setState(() {
      additionalControllers.add(TextEditingController());
    });
  }

  @override
  void dispose() {
    for (var controller in additionalControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, right: 20),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.grey[200],
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Container(
                    margin: const EdgeInsets.only(left: 4),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Add to Cart (5)',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Delivery Address',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      height: 1.5,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  margin: const EdgeInsets.only(top: 10, left: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: getHomeBorderColor(),
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Text('HOME'),
                        trailing: IconButton(
                          icon: Icon(isEditingHome ? Icons.done : Icons.edit),
                          onPressed: () => toggleEditing(isEditingHome),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 250,
                            margin: const EdgeInsets.only(
                              right: 7,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              controller: homeController,
                              decoration: const InputDecoration(),
                              enabled: isEditingHome,
                            ),
                          ),
                          Text(isEditingHome ? 'Edit' : 'View'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 340,
                  margin: const EdgeInsets.only(top: 10, left: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: getOfficeBorderColor(),
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Text('OFFICE'),
                        trailing: IconButton(
                          icon: Icon(isEditingOffice ? Icons.done : Icons.edit),
                          onPressed: () => toggleEditing(isEditingOffice),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 250,
                            margin: const EdgeInsets.only(
                              right: 7,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              controller: officeController,
                              decoration: const InputDecoration(),
                              enabled: isEditingOffice,
                            ),
                          ),
                          Text(isEditingOffice ? 'Edit' : 'View'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                for (var controller in additionalControllers)
                  Container(
                    width: 340,
                    margin: const EdgeInsets.only(top: 10, left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListTile(
                          leading: const Text('NEW ADDRESS'),
                          trailing: IconButton(
                            icon:
                                Icon(isEditingOffice ? Icons.done : Icons.edit),
                            onPressed: () => toggleEditing(isEditingOffice),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 250,
                              margin: const EdgeInsets.only(right: 5),
                              padding: const EdgeInsets.all(10),
                              child: TextField(
                                controller: controller,
                                decoration: const InputDecoration(),
                              ),
                            ),
                            const Text('View'),
                          ],
                        ),
                      ],
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: addNewTextField,
                      icon: const Icon(Icons.add_circle_outlined),
                      color: Colors.amber,
                    ),
                    const Text(
                      "Added Addresses",
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        height: 1.5,
                        letterSpacing: 0.0,
                      ),
                    )
                  ],
                ),
                Container(
                  width: 290,
                  height: 60,
                  margin: const EdgeInsets.only(top: 110, left: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2A4BA0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FormInformation(),
                        ),
                      );
                    },
                    child: const Text(
                      'Add Card',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
