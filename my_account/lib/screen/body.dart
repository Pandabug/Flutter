import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            CircleAvatar(
              radius: 46,
              backgroundColor: Colors.pinkAccent[100],
              child: CircleAvatar(
                radius: 44,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                child: CircleAvatar(
                  child: Image.asset('assets/images/user1.png'),
                  backgroundColor: Colors.pinkAccent[100],
                  radius: 40,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Jane Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.pinkAccent[100],
                ),
                Text('New York, USA'),
              ],
            ),
            SizedBox(height: 16),
            Text('Photography is the story I fail to put into words'),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                accountInfo(context, '36', 'Posts'),
                accountInfo(context, '3.5k', 'Following'),
                accountInfo(context, '15K', 'Followers'),
              ],
            ),
            Divider(height: 32),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Photos'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent[100],
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  buildPhotoGrid(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPhotoGrid() => StaggeredGridView.countBuilder(
        primary: false,
        shrinkWrap: true,
        crossAxisCount: 4,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          final urlImage = 'https://source.unsplash.com/random?sig=$index';

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(urlImage),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2 : 1),
      );

  Widget accountInfo(context, String title1, String title2) => Column(
        children: [
          Text(
            title1,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(title2),
        ],
      );
}
