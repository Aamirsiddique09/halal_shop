import 'package:flutter/material.dart';

// Import other custom classes and dependencies here

class SearchBox extends StatefulWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(top: 30),
      child: SearchAnchor(
        viewBackgroundColor: const Color(0xFFE0E2EE),
        builder: (BuildContext context, SearchController controller) {
          return SearchBar(
            controller: controller,
            padding: const MaterialStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 13.0)),
            onTap: () {
              controller.openView();
            },
            onChanged: (_) {
              controller.openView();
            },
            leading: const Icon(Icons.search_sharp),
            hintText: 'Search Products or store',
            overlayColor: MaterialStateProperty.all<Color>(Colors.black),
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 51, 77, 143),
            ),
            surfaceTintColor:
                MaterialStateProperty.all<Color>(const Color(0xFF8891A5)),
          );
        },
        suggestionsBuilder:
            (BuildContext context, SearchController controller) {
          // Create a list of items for searching
          final List<String> items = [
            'item 0',
            'item 1',
            'item 2',
            'item 3',
            'item 4',
          ];

          // Filter items based on the search query
          final List<String> filteredItems = items
              .where((item) =>
                  item.toLowerCase().contains(controller.text.toLowerCase()))
              .toList();

          return filteredItems.map((item) {
            return ListTile(
              title: Text(item),
              onTap: () {
                controller.closeView(item);
              },
            );
          }).toList();
        },
      ),
    );
  }
}
