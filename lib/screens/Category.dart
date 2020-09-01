import 'package:artemy_beta_2/config/Animation.dart';
import 'package:artemy_beta_2/screens/Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String title;
  final String image;
  final String tag;

  CategoryPage({this.title, this.image, this.tag});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
              Material(
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image), fit: BoxFit.cover)),
                  child: Container(
                    margin: EdgeInsets.only(top: 25),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.1)
                        ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FadeAnimation(
                                  0.5,
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    FadeAnimation(
                                      0.5,
                                      IconButton(
                                        icon: Icon(
                                          Icons.search,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
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
                              ],
                            ),
                          ],
                        ),
                        FadeAnimation(
                          0.5,
                          Text(
                            widget.title,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nuevos Productos",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "Ver Mas",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 11,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  makeProduct(
                      image: 'assets/images/image1.jpg',
                      title: "Escultura",
                      price: "\$300",
                      tag: "Escultura"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeProduct({image, title, price, tag}) {
    return Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Product(tag: tag)));
          },
          child: Material(
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.8),
                        Colors.black.withOpacity(.0)
                      ]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeAnimation(
                        0.5,
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 26),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        )),
                    FadeAnimation(
                        0.5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    price,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Center(
                                child: Icon(
                                  Icons.add_shopping_cart,
                                  size: 22,
                                  color: Colors.grey[700],
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}
