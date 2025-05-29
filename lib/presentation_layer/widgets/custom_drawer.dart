import 'package:flutter/material.dart';
import 'package:quiz_app/presentation_layer/widgets/custom_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 139, 235, 188),
            ),
            height: 200,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: CircleAvatar(
                radius: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person, size: 100, color: Colors.black45),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          DrawerItem(icon: Icons.person, title: "Yassin Abaker"),
          Divider(thickness: 2),
          SizedBox(height: 20),
          DrawerItem(icon: Icons.home, title: "Home"),
          DrawerItem(icon: Icons.account_balance, title: "My Account"),
          DrawerItem(icon: Icons.task, title: "Take a Test"),
          DrawerItem(icon: Icons.help, title: "About "),
          Divider(thickness: 2),
          SizedBox(height: 20),
          DrawerItem(icon: Icons.logout_sharp, title: "Logout"),
          DrawerItem(icon: Icons.settings, title: "Settings"),
        ],
      ),
    );
  }
}
