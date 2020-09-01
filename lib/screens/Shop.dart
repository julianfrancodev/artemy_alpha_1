import 'package:artemy_beta_2/config/Animation.dart';
import 'package:artemy_beta_2/model/Category.dart';
import 'package:artemy_beta_2/screens/Category.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2)
                    ])),
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FadeAnimation(
                            0.5,
                            IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          FadeAnimation(
                              0.5,
                              IconButton(
                                icon: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ))
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FadeAnimation(
                              0.5,
                              Text(
                                "Nuevos Productos",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FadeAnimation(
                                0.5,
                                Row(
                                  children: [
                                    Text(
                                      "VER MAS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 15,
                                    )
                                  ],
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  FadeAnimation(
                    0.5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Categorias",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        aspectRatio: 16/9, autoPlay: true),
                    items: categoriesList.map((category) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: makeCategory(
                                    image: category.url,
                                    title: category.name,
                                    tag: category.tag)),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FadeAnimation(
                    0.5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Mas Solicitados",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(aspectRatio: 16 / 7),
                    items: trendsList.map((category) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: makeCategory(
                                    image: category.url,
                                    title: category.name,
                                    tag: category.tag)),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List categoriesList = [
    new Category("Navidad", "assets/images/image4.jpg", "Diciembre"),
    new Category("Orfebreria", "assets/images/image3.jpg", "Medieval"),
    new Category("Escultural", "assets/images/image2.jpg", "Visual"),
    new Category("Lienzo", "assets/images/image1.jpg", "Renancentista"),
  ];

  List trendsList = [
    new Category("Culinaria", "assets/images/trend1.jpg", "Surrealista"),
    new Category("Abstracto", "assets/images/trend2.jpg", "Psicodelico"),
    new Category("Rupestre", "assets/images/trend3.jpg", "Cubista"),
    new Category("Bizantino", "assets/images/trend4.jpg", "Country"),
  ];

  Widget makeCategory({image, title, tag}) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CategoryPage(
                        title: title,
                        image: image,
                        tag: tag,
                      )));
        },
        child: Material(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.8),
                        Colors.black.withOpacity(.0)
                      ])),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FadeAnimation(
                  0.5,
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
