import 'package:flutter/material.dart';

class ClorsItem extends StatelessWidget {
  const ClorsItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: isActive
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: CircleAvatar(
                radius: 28,
                backgroundColor: color,
              ),
            )
          : CircleAvatar(
              radius: 40,
              backgroundColor: color,
            ),
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentState = 0;
  List<Color> colors = const [
    Color(0xffAC3931),
    Color(0xffE5D352),
    Color(0xffD9E76C),
    Color(0xff537D8D),
    Color(0xff482C3D),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentState = index;
              setState(() {});
            },
            child: ClorsItem(
              color: colors[index],
              isActive: currentState == index,
            ),
          );
        },
      ),
    );
  }
}
