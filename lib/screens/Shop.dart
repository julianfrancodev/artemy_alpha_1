import 'package:artemy_beta_2/config/Animation.dart';
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
            FadeAnimation(
              1,
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
                              1,
                              IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            FadeAnimation(
                                1,
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
                                1,
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
                                  1,
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
            ),
           FadeAnimation(
             1,
               Container(
                 margin: EdgeInsets.symmetric(vertical: 20),
                 child: Column(
                   children: [
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
                     SizedBox(
                       height: 20,
                     ),
                     Container(
                       height: 150,
                       child: Container(
                         child: ListView(
                           scrollDirection: Axis.horizontal,
                           children: [
                             makeCategory(
                                 image: "assets/images/image4.jpg",
                                 title: "Religioso"),
                             makeCategory(
                                 image: "assets/images/image3.jpg",
                                 title: "Abstracto"),
                             makeCategory(
                                 image: "assets/images/image2.jpg",
                                 title: "Escultural"),
                             makeCategory(
                                 image: "assets/images/image1.jpg",
                                 title: "Culinaria")
                           ],
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 40,
                     ),
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
                     SizedBox(
                       height: 20,
                     ),
                     Container(
                       height: 150,
                       child: Container(
                         child: ListView(
                           scrollDirection: Axis.horizontal,
                           children: [
                             makeBestSellByCategory(
                                 image: "assets/images/trend1.jpg",
                                 title: "Floral"),
                             makeBestSellByCategory(
                                 image: "assets/images/trend2.jpg",
                                 title: "Navidad"),
                             makeBestSellByCategory(
                                 image: "assets/images/trend3.jpg",
                                 title: "Escultural"),
                             makeBestSellByCategory(
                                 image: "assets/images/trend4.jpg",
                                 title: "Ilustrativo")
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               )
           ),
          ],
        ),
      ),
    );
  }

  Widget makeCategory({image, title}) {
    return Container(
      child: AspectRatio(
        aspectRatio: 2 / 2.2,
        child: Container(
          margin: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.0)
                ])),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget makeBestSellByCategory({image, title, price}) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.0)
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
