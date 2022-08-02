import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgurl = "https://graphixmedia.net/sub-img/Rahul-Ranjan.jpg";
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.orange),
                  accountName: Text("Rahul Ranjan"),
                  accountEmail: Text("Rahulrk.rr52@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imgurl),
                  ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.orange,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.orange),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.orange,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.orange),
              ),
            ),
            ListTile(
              onTap: () {
                print("tap complete");
              },
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.orange,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.orange),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.lock_circle,
                color: Colors.orange,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.orange),
              ),
            )
          ],
        ),
      ),
    );
  }
}
