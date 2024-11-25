import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () =>  Navigator.pushNamed(context, "/update"),
            leading: CircleAvatar(
              backgroundImage:
                  Image(image: AssetImage("assets/user.png")).image,
            ),
            title: Text("current User"),
            subtitle: Text('********* '),
            trailing: Icon(Icons.edit_outlined),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info_outline,),
            title: Text("About"),
          ),

          Divider(),
          ListTile(
            leading: Icon(Icons.logout_outlined ,),
            title: Text("About..."),
          )


        ],
      ),
    );
  }
}
