import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool isPressed = false;

  void _isPressed() {
    setState(() {
      isPressed = true;
    });
  }

  void _isAfterPressed() {
    setState(() {
      isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('assets/logo.png'),
                        height: 40,
                        width: 40,
                      ),
                      Container(
                        child: Image.asset('assets/logoName.png'),
                        height: 40,
                        width: 70,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.headphones,
                          size: 35,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 35,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.favorite_outline_outlined,
                          size: 35,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 1,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Container(
              height: 250,
              width: double.infinity,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://images.pexels.com/photos/1185617/pexels-photo-1185617.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: isPressed ? Colors.red : Colors.grey,
                            size: 20,
                          ),
                          onPressed: () =>
                              isPressed ? _isAfterPressed() : _isPressed(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Allure of Gold Earrings, Earrings',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Text.rich(
              TextSpan(text: "From ", children: [
                TextSpan(
                  text: 'Gaurily',
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 16,
                  ),
                )
              ]),
            ),
            SizedBox(height: 10),
            Text.rich(TextSpan(
                text: 'Rs. 1,299   ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                children: [
                  TextSpan(
                      text: 'Rs. 1,899',
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey))
                ])),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'You saved Rs. 600',
                  style: TextStyle(color: Colors.green),
                ),
                InkWell(
                  canRequestFocus: true,
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'View Offers',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child: Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Note: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),
                      ),
                      TextSpan(
                        text: 'Color might be different from actual',
                        style: TextStyle(
                          fontSize: 18
                        )
                      ),
                    ]
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
