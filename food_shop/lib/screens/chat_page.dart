import 'package:flutter/material.dart';
import 'package:food_shop/screens/chat_read.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SafeArea(
          child: Column(
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.black,
                centerTitle: false,
                title: Text(
                  'Messages',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                actions: [
                  Icon(Icons.search, size: 30),
                  SizedBox(width: 16),
                  Icon(Icons.settings, size: 30),
                  SizedBox(width: 16),
                ],
              ),
              ChatCard(title: 'Niccolo Fato', text: 'Ciao'),
              ChatCard(title: '+3342371234', text: 'Random text...!'),
              ChatCard(title: 'Manzoni Lucche', text: 'Some random text!!'),
              ChatCard(title: 'Niccolo Fato', text: 'Ciao'),
              ChatCard(title: '+3342371234', text: 'Random text...!'),
              ChatCard(title: 'Manzoni Lucche', text: 'Some random text!!'),
              ChatCard(title: 'Antonio Regni', text: 'Hello!'),
              ChatCard(title: 'Manzoni Lucche', text: 'Some random text!!'),
              ChatCard(title: 'Antonio Regni', text: 'Hello!'),
              ChatCard(title: 'Niccolo Fato', text: 'Ciao'),
              ChatCard(title: 'Antonio Regni', text: 'Hello!'),
              ChatCard(title: '+3342371234', text: 'Random text...!'),
            ],
          ),
        ),
      ],
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String title, text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatRead(
              title: title,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: ListTile(
          leading: SizedBox(
            height: 80,
            width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90.0),
              child: Image.asset(
                'assets/Popsicles.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(text),
          trailing: Text('12:30'),
        ),
      ),
    );
  }
}
