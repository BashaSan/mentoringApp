import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Material(
      color: Colors.blue.shade700,
      child: InkWell(
          child: Container(
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 55,
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/media/Dt5-aE3XcAAIIlU.jpg'),
            ),
            SizedBox(height: 12),
            Text(
              "Basha Ksk",
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "kskbasha777@gmail.com",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            )
          ],
        ),
      )));

  Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        runSpacing: 10,
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text("Favourites"),
          ),
          ListTile(
              leading: const Icon(Icons.chat_rounded),
              title: const Text("Discussions"),
              onTap: () {}),
          const Divider(color: Colors.black),
          ListTile(
              leading: const Icon(Icons.update),
              title: const Text("Updates"),
              onTap: () {}),
          ListTile(
              leading: const Icon(Icons.account_tree_outlined),
              title: const Text("Plugins"),
              onTap: () {}),
          ListTile(
              leading: const Icon(Icons.notifications_active_outlined),
              title: const Text("Notifications"),
              onTap: () {}),
          ListTile(
            leading: const Icon(Icons.logout_rounded),
            title: const Text("Log Out"),
            onTap: () {},
          )
        ],
      ));
}
