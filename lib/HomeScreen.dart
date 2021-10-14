import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
        cardImage: "https://images.pexels.com/photos/2286400/pexels-photo-2286400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Lorem ipsum dolor sit amet",
        subTitle: 'Lorem ipsum dolor sit amet,'
    ),
    CardSliders(
        cardImage: "https://images.pexels.com/photos/2131600/pexels-photo-2131600.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Lorem ipsum dolor sit amet",
        subTitle: 'Lorem ipsum dolor sit amet,'
    ),
    CardSliders(
        cardImage: "https://images.pexels.com/photos/2286400/pexels-photo-2286400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Lorem ipsum dolor sit amet",
        subTitle: 'Lorem ipsum dolor sit amet,'
    ),
  ];

  List<SmallCardSlider> _smallCardSlider = [
    SmallCardSlider(
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh-EeDkS_vuHpoQMRozGr0ZnIxTVpcxOjmJA&usqp=CAU",
      title: "Lorem Ipsum"
    ),
    SmallCardSlider(
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh-EeDkS_vuHpoQMRozGr0ZnIxTVpcxOjmJA&usqp=CAU",
        title: "Lorem Ipsum"
    ),
    SmallCardSlider(
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFBvYZKrA_9zQPB710dzkzGKzwhnA2LoO2Tw&usqp=CAU",
        title: "Lorem Ipsum"
    ),
    SmallCardSlider(
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBlXXWhj5BEmkQDY4RBqt8LmkNIY2AgKVoew&usqp=CAU",
        title: "Lorem Ipsum"
    ),
    SmallCardSlider(
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh-EeDkS_vuHpoQMRozGr0ZnIxTVpcxOjmJA&usqp=CAU",
        title: "Lorem Ipsum"
    ),
    SmallCardSlider(
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfTDqPFRd33j0QOqF3xgLSJYhadjVKxEl5pA&usqp=CAU",
        title: "Lorem Ipsum"
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.white,

                ///Custom AppBar
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset('assets/onlyLogo.png'),
                          ),
                          Container(
                            width: 100,
                            child: Image.asset('assets/logoName.png'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.headphones,
                                size: 35,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.search,
                                size: 35,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.favorite_outline_outlined,
                                size: 35,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
                    separatorBuilder: (context, _) =>
                        SizedBox(
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
                    onPageChanged: (index, reason) =>
                        setState(() {
                          activeIndex = index;
                        }),
                  ),
                  itemCount: _sliderImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final _urlImage = _sliderImages[index];
                    return buildImage(urlImage: _urlImage, index: index);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),

              /// indicator
              _buildIndicator(),
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
                    separatorBuilder: (context,_) => SizedBox(width: 10,),
                    itemBuilder: (context, index) => buildCardList(items: _cardSlider[index]),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCardList({
    @required CardSliders items,
  }) => Container(
      width: 300,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Image.network(items.cardImage,fit: BoxFit.cover,)),
        ),
        SizedBox(height: 10,),
        Text(items.title,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
        SizedBox(height: 4,),
        Text(items.subTitle,style: TextStyle(fontSize: 18,color: Colors.black),),
      ],
    ),
  );
  Widget buildImage({
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
  Widget _buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: _sliderImages.length,
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
          borderRadius: BorderRadius.all(Radius.circular(50.0),),
        ),
        child: ClipOval(
          child: Image.network(
            images.circulaImages,
            fit: BoxFit.cover,
          ),
        ),
      );
}







