import 'package:flutter/material.dart';


class FindProduct extends StatelessWidget {
  const FindProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Find Products"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                prefixIcon: const Icon(Icons.search),
                hintText: "Search Store",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
