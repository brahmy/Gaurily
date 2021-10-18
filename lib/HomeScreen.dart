import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gaurily/models/HomeScreenModel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CircularImages> _circularImages = [
    CircularImages(
      circulaImages:
          "https://images.pexels.com/photos/9800864/pexels-photo-9800864.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
          "https://images.pexels.com/photos/458766/pexels-photo-458766.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
          "https://images.pexels.com/photos/1446161/pexels-photo-1446161.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
          "https://images.pexels.com/photos/3221176/pexels-photo-3221176.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
          "https://images.pexels.com/photos/3221176/pexels-photo-3221176.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
          "https://images.pexels.com/photos/2328991/pexels-photo-2328991.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
          "https://images.pexels.com/photos/2808556/pexels-photo-2808556.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
          "https://images.pexels.com/photos/2286400/pexels-photo-2286400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
  ];

  // First Slider Images
  int activeIndex = 0;
  List<FirstSlider> _sliderImages = [
    FirstSlider(
      sliderImages:
          "https://images.pexels.com/photos/2286400/pexels-photo-2286400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    FirstSlider(
      sliderImages:
          "https://images.pexels.com/photos/2808556/pexels-photo-2808556.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    FirstSlider(
      sliderImages:
          "https://images.pexels.com/photos/2131600/pexels-photo-2131600.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    FirstSlider(
      sliderImages:
          "https://images.pexels.com/photos/2328991/pexels-photo-2328991.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    FirstSlider(
      sliderImages:
          "https://images.pexels.com/photos/3385375/pexels-photo-3385375.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    FirstSlider(
      sliderImages:
          "https://images.pexels.com/photos/5673960/pexels-photo-5673960.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    FirstSlider(
      sliderImages:
          "https://images.pexels.com/photos/177332/pexels-photo-177332.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
  ];

  List<CardSliders> _cardSlider = [
    CardSliders(
        cardImage:
            "https://images.pexels.com/photos/2286400/pexels-photo-2286400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Lorem ipsum dolor sit amet",
        subTitle: 'Lorem ipsum dolor sit amet,'),
    CardSliders(
        cardImage:
            "https://images.pexels.com/photos/2131600/pexels-photo-2131600.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Lorem ipsum dolor sit amet",
        subTitle: 'Lorem ipsum dolor sit amet,'),
    CardSliders(
        cardImage:
            "https://images.pexels.com/photos/2286400/pexels-photo-2286400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Lorem ipsum dolor sit amet",
        subTitle: 'Lorem ipsum dolor sit amet,'),
  ];

  List<SmallCardSlider> _smallCardSlider = [
    SmallCardSlider(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh-EeDkS_vuHpoQMRozGr0ZnIxTVpcxOjmJA&usqp=CAU",
        title: "Lorem Ipsum"),
    SmallCardSlider(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh-EeDkS_vuHpoQMRozGr0ZnIxTVpcxOjmJA&usqp=CAU",
        title: "Lorem Ipsum"),
    SmallCardSlider(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFBvYZKrA_9zQPB710dzkzGKzwhnA2LoO2Tw&usqp=CAU",
        title: "Lorem Ipsum"),
    SmallCardSlider(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBlXXWhj5BEmkQDY4RBqt8LmkNIY2AgKVoew&usqp=CAU",
        title: "Lorem Ipsum"),
    SmallCardSlider(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh-EeDkS_vuHpoQMRozGr0ZnIxTVpcxOjmJA&usqp=CAU",
        title: "Lorem Ipsum"),
    SmallCardSlider(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfTDqPFRd33j0QOqF3xgLSJYhadjVKxEl5pA&usqp=CAU",
        title: "Lorem Ipsum"),
  ];

  List<String> _fourcard = [
    "https://images.unsplash.com/photo-1634494726438-904f78b8bcc1?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634461359394-3fbfda1259fa?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634141455740-1f168af94ea6?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMzV8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634141405777-1db04b151366?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMDN8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ];

  int activeIndex2 = 0;
  List<SecondSlider> _secondSlider = [
    SecondSlider(
      image:
          "https://images.unsplash.com/photo-1634141406667-1a7d17e73576?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMTZ8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    ),
    SecondSlider(
      image:
          "https://images.unsplash.com/photo-1634233258581-de3737d4ebeb?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mzd8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    ),
    SecondSlider(
      image:
          "https://images.unsplash.com/photo-1634225684388-9878ff534aa2?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0NTR8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    ),
    SecondSlider(
        image:
            "https://images.unsplash.com/photo-1634155323530-385a795dd103?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1NzR8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    SecondSlider(
        image:
            "https://images.unsplash.com/photo-1634149134165-6d679d80a800?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2MDZ8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  ];

  List<VerySmallCardSlider> _verySmallCardSlider = [
    VerySmallCardSlider(
      image: "https://images.unsplash.com/photo-1634080770448-3df524986a2f?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2NDl8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      title: 'Lorem Ipsum',
    ),
    VerySmallCardSlider(
      image: "https://images.unsplash.com/photo-1634052328882-eb611683bf32?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2OTl8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      title: 'Lorem Ipsum'
    ),
    VerySmallCardSlider(
      image: "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      title: 'Lorem Ipsum'
    ),
    VerySmallCardSlider(
        image: "https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        title: 'Lorem Ipsum'
    ),
    VerySmallCardSlider(
        image: "https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        title: 'Lorem Ipsum'
    ),
    VerySmallCardSlider(
        image: "https://images.unsplash.com/photo-1589571894960-20bbe2828d0a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        title: 'Lorem Ipsum'
    ),
    VerySmallCardSlider(
        image: "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        title: 'Lorem Ipsum'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Bottom App Bar
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade400,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home_filled,
                    size: 40,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.category_sharp,
                    size: 40,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag,
                    size: 40,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    size: 40,
                  )),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset('assets/onlyLogo.png'),
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
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                color: Colors.black,
              ),

              /// Circular Images
              Container(
                height: 70,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: _circularImages.length,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) =>
                        _buildCircularImage(images: _circularImages[index]),
                  ),
                ),
              ),

              /// First Slider
              Container(
                height: 300,
                width: double.infinity,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 300,
                    autoPlay: true,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) => setState(() {
                      activeIndex = index;
                    }),
                  ),
                  itemCount: _sliderImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final _urlImage = _sliderImages[index];
                    return firstSlider(urlImage: _urlImage, index: index);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),

              /// indicator
              _firstSliderIndicator(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                  height: 250,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: _cardSlider.length,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) =>
                        buildCardList(items: _cardSlider[index]),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Container(
                  height: 150,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: _smallCardSlider.length,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 20,
                    ),
                    itemBuilder: (context, index) =>
                        buildSmallCard(items: _smallCardSlider[index]),
                  ),
                ),
              ),
              Container(
                height: 350,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    itemCount: _fourcard.length,
                    itemBuilder: (context, index) => Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          _fourcard[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    staggeredTileBuilder: (index) =>
                        StaggeredTile.count(2, 1.7),
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 300,
                    autoPlay: true,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) => setState(() {
                      activeIndex2 = index;
                    }),
                  ),
                  itemCount: _secondSlider.length,
                  itemBuilder: (context, index, realIndex) {
                    final _urlImage = _secondSlider[index];
                    return secondSlider(urlImage: _urlImage, index: index);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              _secondSliderIndicator(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: _verySmallCardSlider.length,
                    separatorBuilder: (context, _) => SizedBox(
                      width: 20,
                    ),
                    itemBuilder: (context, index) =>
                        buildVerySmallCard(items: _verySmallCardSlider[index]),
                  ),
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCardList({
    @required CardSliders items,
  }) =>
      Container(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    items.cardImage,
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              items.title,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              items.subTitle,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
      );

  Widget buildSmallCard({
    @required SmallCardSlider items,
  }) =>
      Container(
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  items.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              items.title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
  Widget buildVerySmallCard({
    @required VerySmallCardSlider items,
  }) =>
      Container(
        width: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  items.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              items.title,
              style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );

  Widget firstSlider({
    FirstSlider urlImage,
    int index,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          urlImage.sliderImages,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _firstSliderIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: _sliderImages.length,
        effect: SlideEffect(
          dotHeight: 7,
          dotWidth: 7,
        ),
      );

  Widget secondSlider({
    SecondSlider urlImage,
    int index,
  }) =>
      Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            urlImage.image,
            fit: BoxFit.fill,
          ),
        ),
      );

  Widget _secondSliderIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex2,
        count: _secondSlider.length,
        effect: SlideEffect(
          dotHeight: 7,
          dotWidth: 7,
        ),
      );

  Widget _buildCircularImage({
    CircularImages images,
  }) =>
      Container(
        width: 50.0,
        height: 30.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
        ),
        child: ClipOval(
          child: Image.network(
            images.circulaImages,
            fit: BoxFit.cover,
          ),
        ),
      );
}
