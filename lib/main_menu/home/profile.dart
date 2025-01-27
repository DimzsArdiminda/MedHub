// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white ,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text("My Profile",
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 30, top: 15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('asset/login/lorem.png'),
                    fit: BoxFit.cover,
                  ),
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi, Lorem Ipsum", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),),
                    Text("Welcome to MedHub", style: TextStyle(
                            color: Colors.grey[350]
                            ), ),
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            // OTHER MENU
            TextButton(
              onPressed: (){},
              child: Column(
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                  children: [
                    Image.asset("asset/logos/logo-prof-1.png"),
                    SizedBox(width: 16),
                    Text("Private Account",
                    style: TextStyle(
                      color: Colors.grey[900]
                    ),
                    ),
                  ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15,
                  ),
                ],
                ),
                SizedBox(height: 10,),
                Divider(
                color: Colors.grey,
                thickness: 1,
                ),
                SizedBox(height: 10,),
              ],
              ),
            ),
            TextButton(
              onPressed: (){},
              child: Column(
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                  children: [
                    Image.asset("asset/logos/logo-prof-2.png"),
                    SizedBox(width: 16),
                    Text("My Consults",
                    style: TextStyle(
                      color: Colors.grey[900]
                    ),
                    ),
                  ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15,
                  ),
                ],
                ),
                SizedBox(height: 10,),
                Divider(
                color: Colors.grey,
                thickness: 1,
                ),
                SizedBox(height: 10,),
              ],
              ),
            ),
            TextButton(
              onPressed: (){},
              child: Column(
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                  children: [
                    Image.asset("asset/logos/logo-prof-3.png"),
                    SizedBox(width: 16),
                    Text("My orders",
                    style: TextStyle(
                      color: Colors.grey[900]
                    ),
                    ),
                  ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15,
                  ),
                ],
                ),
                SizedBox(height: 10,),
                Divider(
                color: Colors.grey,
                thickness: 1,
                ),
                SizedBox(height: 10,),
              ],
              ),
            ),
            TextButton(
              onPressed: (){},
              child: Column(
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                  children: [
                    Image.asset("asset/logos/logo-prof-4.png"),
                    SizedBox(width: 16),
                    Text("Billing",
                    style: TextStyle(
                      color: Colors.grey[900]
                    ),
                    ),
                  ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15,
                  ),
                ],
                ),
                SizedBox(height: 10,),
                Divider(
                color: Colors.grey,
                thickness: 1,
                ),
                SizedBox(height: 10,),
              ],
              ),
            ),
            TextButton(
              onPressed: (){},
              child: Column(
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                  children: [
                    Image.asset("asset/logos/logo-prof-5.png"),
                    SizedBox(width: 16),
                    Text("FAQ",
                    style: TextStyle(
                      color: Colors.grey[900]
                    ),
                    ),
                  ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15,
                  ),
                ],
                ),
                SizedBox(height: 10,),
                Divider(
                color: Colors.grey,
                thickness: 1,
                ),
                SizedBox(height: 10,),
              ],
              ),
            ),
            TextButton(
              onPressed: (){},
              child: Column(
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                  children: [
                    Image.asset("asset/logos/logo-prof-6.png"),
                    SizedBox(width: 16),
                    Text("Settings",
                    style: TextStyle(
                      color: Colors.grey[900]
                    ),
                    ),
                  ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 15,
                  ),
                ],
                ),
              ],
              ),
            ),
            
           

          ],
        ),
      ),
    );
  }
}