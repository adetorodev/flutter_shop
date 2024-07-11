import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> filters = const ['All', 'Addidas', 'Nike', 'Bata'];

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(50),
      ),
    );
    return const Scaffold(
        body: SafeArea(
      top: true,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Shoe\nCollection',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefix: Icon(
                      Icons.search,
                    ),
                    border: border,
                    focusedBorder: border,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
