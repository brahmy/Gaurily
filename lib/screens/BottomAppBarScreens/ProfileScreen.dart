import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Widget widget(String title) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Icon(Icons.arrow_forward_ios_outlined, size: 20,),
              ],
            ),
            SizedBox(height: 10),
            Divider(height: 1, color: Colors.black,)
          ],
        ),
      );
    }
    Widget text (String title){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 90,
                    child: Text(
                      'BV',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 72,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Boggala Vamsi',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'vamsiboggala@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.grey.shade200,
            height: 10,
            width: double.infinity,
          ),
          SizedBox(height: 10),
          widget("My Orders"),
          widget("My Wishlist"),
          widget("My Measurements"),
          widget("Personal Information"),
          widget("My Address"),
          widget("Contact Us"),
          SizedBox(height: 10),
          Container(
            color: Colors.grey.shade200,
            height: 10,
            width: double.infinity,
          ),
          SizedBox(height: 10),
          text('GAURILY ASSURANCE'),
          text('PRIVACY POLICY'),
          text('BLOG'),
          text('TERMS OF USE'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
