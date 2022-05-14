import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final String title;
  const AppBarTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
    );
  }
}

final itemsList = List<String>.generate(10, (n) => "List item $n");

Widget slideRightBackground() {
  return Container(
    color: Colors.transparent,
    child: Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.edit,
            color: Colors.green,
          ),
          Text(
            " Edit",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
      alignment: Alignment.centerLeft,
    ),
  );
}

Widget slideLeftBackground() {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),
    color: Colors.transparent,
    ),
    width: 30,
    child: Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const <Widget>[
          Icon(
            Icons.delete,
            color: Colors.red,
          ),
          Text(
            " Delete",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      alignment: Alignment.centerLeft,
    ),
  );
}
