import 'package:flutter/material.dart';

class ClorsItem extends StatelessWidget {
  const ClorsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 38,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ClorsItem();
        },
      ),
    );
  }
}
