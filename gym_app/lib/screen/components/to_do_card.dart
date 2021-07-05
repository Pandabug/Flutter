import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ToDo extends StatelessWidget {
  const ToDo({
    this.size,
  });
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        ToDoCard(
          size: size,
          img: 'assets/icons/Excrecises.svg',
          title: 'this text',
        ),
        ToDoCard(
          size: size,
          img: 'assets/icons/Hamburger.svg',
          title: 'this text',
        ),
        ToDoCard(
          size: size,
          img: 'assets/icons/Meditation.svg',
          title: 'this text',
        ),
        ToDoCard(
          size: size,
          img: 'assets/icons/yoga.svg',
          title: 'this text',
        ),
      ],
    );
  }
}

class ToDoCard extends StatelessWidget {
  const ToDoCard({
    this.size,
    this.img,
    this.title,
  });
  final Size size;
  final img;
  final String title;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return TextButton(
      onPressed: () {},
      child: Container(
        width: size.width * 0.4,
        height: size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              img,
              width: size.width * 0.3,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
