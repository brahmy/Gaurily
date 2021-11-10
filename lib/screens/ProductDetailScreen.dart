import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:gaurily/models/ProductDetailScreenModel.dart';

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
    Widget size = Container(
      child: Center(
        child: Text(
          '16',
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
    );

    Widget color = Container(
      child: Center(
        child: CircleAvatar(
          radius: 12,
          backgroundColor: Colors.deepOrange,
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
    );

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
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          height: 50,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Container(
            height: 40,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
              ),
              child: Text(
                'Buy Now',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Container(
                      height: 250,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Image.network(
                            "https://images.pexels.com/photos/1185617/pexels-photo-1185617.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topRight,
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
                                  onPressed: () => isPressed
                                      ? _isAfterPressed()
                                      : _isPressed(),
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
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                          ),
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
                              fontFamily: 'Poppins'),
                        )
                      ]),
                    ),
                    SizedBox(height: 10),
                    Text.rich(TextSpan(
                        text: 'Rs. 1,299   ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Poppins'),
                        children: [
                          TextSpan(
                              text: 'Rs. 1,899',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey,
                                  fontFamily: 'Poppins'))
                        ])),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'You saved Rs. 600',
                          style: TextStyle(
                              color: Colors.green, fontFamily: 'Poppins'),
                        ),
                        InkWell(
                          canRequestFocus: true,
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'View Offers',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontFamily: 'Poppins'),
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
                          TextSpan(children: [
                            TextSpan(
                              text: 'Note: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: 'Poppins'),
                            ),
                            TextSpan(
                                text: 'Color might be different from actual',
                                style: TextStyle(
                                    fontSize: 18, fontFamily: 'Poppins')),
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Divider(
                      height: 1,
                      thickness: 2,
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              size,
                              SizedBox(width: 5),
                              size,
                              SizedBox(width: 5),
                              size,
                              SizedBox(width: 5),
                              size,
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'View Size Chart',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'See all Available Size',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              color,
                              SizedBox(width: 5),
                              color,
                              SizedBox(width: 5),
                              color,
                              SizedBox(width: 5),
                              color,
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'View Color Chart',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'See all Available color',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    Text(
                      'Delivery Options',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 40,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ))),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey.shade400,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Check',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    buildExpandableWidget(title: 'Lorem Ipsum', content: null),
                    SizedBox(height: 10),
                    buildExpandableWidget(title: 'Lorem Ipsum', content: null),
                    SizedBox(height: 10),
                    buildExpandableWidget(title: 'Shipping', content: _content),
                    SizedBox(height: 10),
                    buildExpandableWidget(title: 'Lorem Ipsum', content: null),
                    SizedBox(height: 20),
                    Container(
                      height: 200,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: _listView.length,
                        separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                        itemBuilder: (context, index) => buildCardSlider(
                          items: _listView[index],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _content = Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shipping in india',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              fontFamily: 'Poppins'
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Location',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text('We deliver order to all pin codes across India via Fedex,'
              'BlueDart,DTDC & Speed Post (remote areas).',style: TextStyle(fontFamily: 'Poppins')),
          SizedBox(height: 20),
          Text(
            'Time',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins'
            ),
          ),
          SizedBox(height: 20),
          Text('8 Business days. Orders from remote locations'
              'might be slightly delayed',style: TextStyle(fontFamily: 'Poppins')),
          SizedBox(height: 20),
          Text(
            'Charges',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'
            ),
          ),
          SizedBox(height: 20),
          Text(
            'FREE shipping on orders above rs.499',
            style: TextStyle(fontFamily: 'Poppins'),
          ),
          Text(
            'Shipping Outside india/International',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                fontFamily: 'Poppins'),
          ),
          SizedBox(height: 10),
          Text(
            'Location',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'),
          ),
          SizedBox(height: 20),
          Text('We ship worldwide', style: TextStyle(fontFamily: 'Poppins')),
          Text(
            'Free shipping applicable subject t'
            'o compaigns/offers and order total.',
            style: TextStyle(fontFamily: 'Poppins'),
          ),
          SizedBox(height: 20),
          Text(
            'Time',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'),
          ),
          SizedBox(height: 20),
          Text(
            '10 - 12 business days basis destination country. If custom'
            'Stiching is selected, we need 5 - 8 extra days',
            style: TextStyle(fontFamily: 'Poppins'),
          ),
          SizedBox(height: 20),
          Text(
            'Charges',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'),
          ),
          SizedBox(height: 20),
          Text(
              'Rs. 500 to first 500 grams and Rs.200 to every additional 500 grams'
              '.Total shipping costs basis the weight of items in your order '
              "will be reflected on 'Check Out' page"),
        ],
      ),
    ),
  );

  Widget buildExpandableWidget({String title, Widget content}) => Container(
        child: ExpandablePanel(
            header: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Poppins'),
            ),
            collapsed: null,
            expanded: content),
      );

  List<ProductDetailScreenListView> _listView = [
    ProductDetailScreenListView(
      image:
          "https://images.pexels.com/photos/1185617/pexels-photo-1185617.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: "Lorem Ipsum",
      isPressed: false,
    ),
    ProductDetailScreenListView(
      image:
          "https://images.pexels.com/photos/1185617/pexels-photo-1185617.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: "Lorem Ipsum",
      isPressed: false,
    ),
    ProductDetailScreenListView(
      image:
          "https://images.pexels.com/photos/1185617/pexels-photo-1185617.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: "Lorem Ipsum",
      isPressed: false,
    ),
  ];

  Widget buildCardSlider({ProductDetailScreenListView items}) {
    void _isPressed() {
      setState(() {
        items.isPressed = true;
      });
    }

    void _isAfterPressed() {
      setState(() {
        items.isPressed = false;
      });
    }

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 200,
            child: Stack(
              children: [
                Image.network(
                  "https://images.pexels.com/photos/1185617/pexels-photo-1185617.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  fit: BoxFit.cover,
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
                          color: items.isPressed ? Colors.red : Colors.grey,
                          size: 20,
                        ),
                        onPressed: () =>
                            items.isPressed ? _isAfterPressed() : _isPressed(),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            items.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins'
            ),
          ),
        ],
      ),
    );
  }
}
