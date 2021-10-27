import 'package:flutter/material.dart';
import 'package:gaurily/models/BagScreenModel.dart';

class BagScreen extends StatefulWidget {
  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  @override
  List<BagScreenModel> _bagList = [
    BagScreenModel(
      title: "Allure of Gold Earrings",
      image:
          "https://images.pexels.com/photos/1454168/pexels-photo-1454168.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      offerPrice: 1299,
      price: 1799,
      deliverDate: "Dec 1",
      discountPrice: 500,
      size: '15',
      color: Colors.orangeAccent,
    ),
    BagScreenModel(
      title: "Allure of Gold Earrings",
      image:
          "https://images.pexels.com/photos/1028927/pexels-photo-1028927.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      offerPrice: 1899,
      price: 2799,
      deliverDate: "Dec 1",
      discountPrice: 900,
      size: '13',
      color: Colors.cyan,
    ),
    BagScreenModel(
      title: "Allure of Gold Earrings",
      image:
          "https://images.pexels.com/photos/7300352/pexels-photo-7300352.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      offerPrice: 1099,
      price: 1799,
      deliverDate: "Dec 1",
      discountPrice: 700,
      size: '16',
      color: Colors.lightGreenAccent,
    ),
    BagScreenModel(
      title: "Allure of Gold Earrings",
      image:
          "https://images.pexels.com/photos/9962618/pexels-photo-9962618.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      offerPrice: 1499,
      price: 1899,
      deliverDate: "Dec 1",
      discountPrice: 400,
      size: '18',
      color: Colors.green,
    ),
  ];

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    Widget pinCodeWidget = Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.grey.shade200,
      height: 40,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on_outlined),
                Text('Deliver to:'),
                Text(
                  '524003',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Change',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          )
        ],
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          pinCodeWidget,
          Container(
            color: Colors.grey.shade400,
            height: 4,
            width: double.infinity,
          ),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return buildBagList(items: _bagList[index]);
                },
                separatorBuilder: (context, index) => Container(
                      color: Colors.grey.shade400,
                      height: 4,
                      width: double.infinity,
                    ),
                itemCount: _bagList.length),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      'Rs. 4302',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Total Amount',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Container(
                  width: 170,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Continue',style: TextStyle(fontSize: 18),),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange.shade400,
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 1,
          )
        ],
      ),
    );
  }

  Widget buildBagList({BagScreenModel items}) => Container(
        child: Column(
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text('From Gaurily'),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Text(
                            'Rs. ${items.offerPrice.toString()}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Rs. ${items.price.toString()}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'You are saving Rs.${items.discountPrice.toString()}',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            child: Center(
                              child: Text(
                                items.size,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            child: Center(
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: items.color,
                              ),
                            ),
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.local_shipping_outlined),
                          SizedBox(width: 5),
                          Text('Deliver by'),
                          SizedBox(width: 5),
                          Text(
                            items.deliverDate,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(items.image),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 2,
            ),
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Remove',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 1,
                    color: Colors.grey.shade400,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Move To WishList',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
}
