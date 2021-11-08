import 'package:flutter/material.dart';

import 'package:instagram_clone/screens/activity.dart';
import 'package:instagram_clone/screens/chat.dart';
import 'package:instagram_clone/screens/new_post.dart';

import 'package:instagram_clone/screens/search.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            actions: [
              TabBar(
                isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    icon: Image.asset(
                      'assets/logo.png',
                      color: Colors.white,
                      width: 170,
                    ),
                  ),
                  const Tab(icon: Icon(Icons.add_box_outlined, size: 26)),
                  const Tab(icon: Icon(Icons.favorite_outline, size: 26)),
                  const Tab(icon: Icon(Icons.send, size: 26)),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.white.withOpacity(0.01),
          body: const TabBarView(
            children: [
              HomePage(),
              NewPost(),
              Activity(),
              Chat(),
            ],
          ),
        ),
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController(initialPage: 0);
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Body(),
    const Search(),
    const NewPost(),
    const Activity(),
    const Body(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.01),
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '',
            backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
            backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: '',
            backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: '',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 25,
              height: 25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/profiles/profile3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: const [
                      _ProfileStory(
                        image: 'assets/profiles/profile.jpg',
                        name: 'Ваша розповідь',
                      ),
                      _Story(
                        image: 'assets/profiles/profile1.jpeg',
                        name: 'aless',
                      ),
                      _Story(
                        image: 'assets/profiles/profile2.jpg',
                        name: 'hsda@edf',
                      ),
                      _Story(
                        image: 'assets/profiles/profile3.jpg',
                        name: 'fsdf',
                      ),
                      _Story(
                        image: 'assets/profiles/profile4.jpg',
                        name: 'microsoft',
                      ),
                      _Story(
                        image: 'assets/profiles/profile.jpg',
                        name: 'gdsg',
                      ),
                      _Story(
                        image: 'assets/profiles/profile.jpg',
                        name: 'fgdfg',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey.withOpacity(0.2)),
            const _Post(
              profile: 'assets/profiles/profile3.jpg',
              post: 'assets/posts/post1.png',
              name: 'playstation',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
              postComments: 3,
              postTime: '2 дн.',
            ),
            const _Post(
              profile: 'assets/profiles/profile4.jpg',
              post: 'assets/posts/post3.jpg',
              name: 'microsoft',
              description: 'Lorem Ipsum is simply dummy text of the',
              postComments: 232,
              postTime: '5 дн.',
            ),
            const _Post(
              profile: 'assets/profiles/profile2.jpg',
              post: 'assets/posts/post2.jpg',
              name: 'roba_strana',
              description: 'Lorem Ipsum is simply',
              postTime: '1 дн.',
            ),
          ],
        ),
      ],
    );
  }
}

class _ProfileStory extends StatelessWidget {
  const _ProfileStory({Key? key, required this.image, required this.name})
      : super(key: key);

  final String image, name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 100,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Container(
                width: 80,
                height: 80,
                padding: const EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                name,
                overflow: TextOverflow.fade,
                softWrap: false,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 4,
                    color: Colors.black,
                  ),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Story extends StatelessWidget {
  const _Story({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          padding: const EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class _Post extends StatelessWidget {
  const _Post({
    Key? key,
    required this.profile,
    required this.post,
    required this.name,
    required this.description,
    this.postComments = 0,
    required this.postTime,
  }) : super(key: key);

  final String profile, post, name, description, postTime;
  final int postComments;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(width: 8),
            SizedBox(
              width: 40,
              height: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  profile,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            const Icon(Icons.more_horiz, color: Colors.white),
            const SizedBox(width: 8),
          ],
        ),
        const SizedBox(height: 8),
        Image.asset(post),
        const SizedBox(height: 8),
        Row(
          children: const [
            SizedBox(width: 8),
            Icon(Icons.favorite_border, color: Colors.white),
            SizedBox(width: 16),
            Icon(Icons.chat_bubble_outline, color: Colors.white),
            SizedBox(width: 16),
            Icon(Icons.send, color: Colors.white),
            Spacer(),
            Icon(Icons.chat_bubble_outline, color: Colors.white),
            SizedBox(width: 8),
          ],
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: RichText(
            text: const TextSpan(
              text: 'Уподобали: ',
              children: <TextSpan>[
                TextSpan(
                  text: 'lucas.__14',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ' та '),
                TextSpan(
                  text: 'інші люди',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: RichText(
            text: TextSpan(
              text: '$name: ',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: description,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 3),
        postComments != 0
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Переглянути всі комментарі ($postComments)',
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
              )
            : const SizedBox(),
        const SizedBox(height: 8),
        Row(
          children: [
            const SizedBox(width: 8),
            SizedBox(
              width: 30,
              height: 30,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  profile,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              'Додати коментар...',
              style: TextStyle(
                color: Colors.grey.withOpacity(0.7),
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Text(
                '$postTime тому',
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                ),
              ),
              SizedBox(
                height: 20,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Переглянути перегляд',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(color: Colors.grey.withOpacity(0.1)),
      ],
    );
  }
}
