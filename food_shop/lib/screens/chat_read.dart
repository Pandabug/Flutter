import 'package:flutter/material.dart';

class ChatRead extends StatelessWidget {
  const ChatRead({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            constraints: BoxConstraints(minHeight: 665),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Whatsapp.jpg'),
                repeat: ImageRepeat.repeat,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                AppBar(
                  backgroundColor: Colors.black87,
                  title: ListTile(
                    leading: SizedBox(
                      height: 50,
                      width: 50,
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
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      '12:30',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  actions: [
                    Icon(
                      Icons.video_camera_front_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.phone_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                UserMessages(text: 'Hi my dear friend!'),
                UserMessages(text: 'How are you?'),
                UserMessages(text: 'I hope I will meet you again!'),
                UserMessages(
                    text:
                        'The last summer was great I hope we will meet again soon!'),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.black87,
        child: Row(
          children: <Widget>[
            Icon(
              Icons.add_outlined,
              size: 30,
              color: Colors.blue,
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 9,
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[800],
                ),
                child: TextField(
                  onChanged: (value) => {},
                  decoration: InputDecoration(
                    hintText: 'Type a message',
                    hintStyle: TextStyle(color: Colors.white70),
                    contentPadding: EdgeInsets.only(left: 15, top: 5),
                    suffixIcon: Icon(
                      Icons.attach_file_rounded,
                      color: Colors.blue,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Icon(
              Icons.mic_none_sharp,
              size: 30,
              color: Colors.blue,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.send,
              size: 30,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class UserMessages extends StatelessWidget {
  const UserMessages({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          color: Colors.lightGreen[700],
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Text(text),
      ),
    );
  }
}
