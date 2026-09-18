import 'package:flutter/material.dart';
import 'package:untitled/project2/loginpage.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/project2/profileback.png',
                  height: height * 0.23,
                  width: width,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.grey.shade900,
                    backgroundImage: AssetImage('assets/project2/actor1.png'),
                  ),
                  title: Text(
                    'Abdullah',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  subtitle: Text(
                    'abdullah@gmail.com',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ],
          ),
          ///////////////////////////////////////////// 2nd column for column list
          SizedBox(height: height * 0.03),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              spacing: 20,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Icon(
                          Icons.person_2_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        Text(
                          'My Profile',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
                Divider(color: Colors.grey.shade800),
                //////////////////////////////////////////////////////// 2nd row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: Colors.white,
                          size: 22,
                        ),
                        Text(
                          'My Profile',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
                Divider(color: Colors.grey.shade800),
                //////////////////////////////////////////////////////// 3rd row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Icon(
                          Icons.download_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        Text(
                          'Download History',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
                Divider(color: Colors.grey.shade800),
                //////////////////////////////////////////////////////// 4th row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Icon(Icons.help_outline, color: Colors.white, size: 25),
                        Text(
                          'Help and Suppport',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
                Divider(color: Colors.grey.shade800),
                //////////////////////////////////////////////////////// 5th row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Icon(
                          Icons.info_outline_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                        Text(
                          'About CineVerse',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
                Divider(color: Colors.grey.shade800),
              ],
            ),
          ),
          SizedBox(height: height * 0.05),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            child: Container(
              width: width * 0.86,
              height: height * 0.06,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(width: 0.9, color: Colors.red),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Logout',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
