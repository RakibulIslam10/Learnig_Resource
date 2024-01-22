import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: Text(
            "My Profile",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [SizedBox(height: 25),
                const CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        "https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-6/395288546_318621060924623_4570391002587848875_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeGnWnSPqm5n1aX9mTky6BomfCbmJW2qUYR8JuYlbapRhM2R0caa3eLKqvdc94nxhYtXI6m67yGOMgR8vmeKdWCn&_nc_ohc=AK0ZAVoPUgEAX_hpUz3&_nc_ht=scontent.fdac22-1.fna&oh=00_AfCVlOgpgG5M_jA3pqrq82_lftgZE4xUbhd72z3rMPLkYg&oe=65B31BD4")),

                const SizedBox(
                  height: 30,
                ),
                // ListTile use for name and subtitle and others under the picture
                ProfileAllItems("Name", "Rakibul Islam", CupertinoIcons.person),
                SizedBox(
                  height: 10,
                ),
                ProfileAllItems("Phone", "01987845068", CupertinoIcons.phone),
                SizedBox(
                  height: 10,
                ),
                ProfileAllItems("Address", "Mannan nogar,trash,sirajganj,",
                    CupertinoIcons.location),
                SizedBox(
                  height: 10,
                ),
                ProfileAllItems("Email", "mdrakibulislam10.net@gmail.com",
                    CupertinoIcons.mail),
                SizedBox(
                  height: 10,
                ),
                ProfileAllItems("Security", "Password", CupertinoIcons.lock),
                SizedBox(
                  height: 35,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("Edit Profile"),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 15),
                      minimumSize: Size(60, 50)),
                )
              ],
            ),
          ),
        ));
  }

  ProfileAllItems(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 5),
              color: Colors.green.withOpacity(.2),
              blurRadius: 10,
              spreadRadius: 3),
        ],
        borderRadius: BorderRadius.circular(13),
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(CupertinoIcons.arrow_right),
        tileColor: Colors.white,
      ),
    );
  }
}
