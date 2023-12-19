import 'package:flutter/material.dart';
import 'package:project1/components/space.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  void logout() {
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            const DrawerHeader(
              child: Icon(Icons.favorite),
            ),
            const Space(inputHeight: 25),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: const Icon(Icons.home),
                title: const Text("H O M E"),
                onTap: () {
                  // this is alread HomePage
                  Navigator.pop(context);
                },
              ),
            ),
            const Space(inputHeight: 25),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text("About"),
                onTap: () {
                  // this is alread HomePage
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/about_page');
                },
              ),
            ),
            const Space(inputHeight: 25),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(Icons.group),
                title: const Text("Contact"),
                onTap: () {
                  // this is alread HomePage
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/contact_page');
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, bottom: 25),
          child: ListTile(
            leading: const Icon(Icons.home),
            title: const Text("L O G O U T"),
            onTap: () {
              // this is alread HomePage
              Navigator.pop(context);
              logout();
            },
          ),
        ),
      ]),
    );
  }
}