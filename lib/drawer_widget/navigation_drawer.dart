import 'package:flutter/material.dart';
import 'package:todo_app/drawer_widget/drawer_item.dart';
import 'package:todo_app/app_pages/friends_page.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.grey[800],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey[850],
              ),
              const SizedBox(
                height: 20,
              ),
              DrawerItem(
                  name: "friends",
                  icon: Icons.people,
                  onpressed: () => onItemPressed(context, index: 0)),
              const SizedBox(
                height: 10,
              ),
              DrawerItem(
                  name: "templates",
                  icon: Icons.bookmark_border_outlined,
                  onpressed: () => onItemPressed(context, index: 1)),
              const SizedBox(
                height: 10,
              ),
              DrawerItem(
                  name: "favourits",
                  icon: Icons.favorite_outline,
                  onpressed: () => onItemPressed(context, index: 4)),
              const SizedBox(
                height: 10,
              ),
              DrawerItem(
                  name: "analytics",
                  icon: Icons.analytics,
                  onpressed: () => onItemPressed(context, index: 3)),
              const SizedBox(
                height: 10,
              ),
              DrawerItem(
                  name: "settings",
                  icon: Icons.settings,
                  onpressed: () => onItemPressed(context, index: 4)),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FriendsPage()));
    }
  }

  Widget headerWidget() => Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[700],
            radius: 40,
            backgroundImage: const AssetImage('assets/ahmedosama.png'),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Ahmed Osama",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text('jrahmedosama@gmail.com',
                  style: TextStyle(
                      fontSize: 12.6,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ],
          )
        ],
      );
}
