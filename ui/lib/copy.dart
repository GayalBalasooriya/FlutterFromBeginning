//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//
//class SizeConfig {
//  static MediaQueryData _mediaQueryData;
//  static double screenWidth;
//  static double screenHeight;
//  static double blockSizeHorizontal;
//  static double blockSizeVertical;
//  static double textMultiplier;
//  static double imageSizeMultiplier;
//  static double heightMultiplier;
//  static double widthMultiplier;
//
//  void init(BuildContext context) {
//    _mediaQueryData = MediaQuery.of(context);
//    screenWidth = _mediaQueryData.size.width;
//    screenHeight = _mediaQueryData.size.height;
//    blockSizeHorizontal = screenWidth / 100;
//    blockSizeVertical = screenHeight / 100;
//
//    textMultiplier = blockSizeVertical;
//    imageSizeMultiplier = blockSizeHorizontal;
//    heightMultiplier = blockSizeVertical;
//    widthMultiplier = blockSizeHorizontal;
//  }
//}
//
//class TravellerView extends StatefulWidget {
//  @override
//  _TravellerViewState createState() => _TravellerViewState();
//}
//
//class _TravellerViewState extends State<TravellerView> {
//  @override
//  Widget build(BuildContext context) {
//    SizeConfig().init(context);
//    return Scaffold(
//        backgroundColor: Colors.yellow,
//        body: Stack(
//          overflow: Overflow.visible,
//          children: <Widget>[
//            Container(
//                color: Colors.blue,
//                height: 40 * SizeConfig.heightMultiplier,
//                child: Padding(
//                  padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 4 * SizeConfig.heightMultiplier),
//                  child: Column(
//                    children: <Widget>[
//                      Container(
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              Container(
//                                  height: 8 * SizeConfig.heightMultiplier,
//                                  padding: EdgeInsets.only(top: 20),
//                                  child: Row(
//                                    children: <Widget>[
//                                      Expanded(
//                                          child: Container(
//                                              decoration: BoxDecoration(
//                                                  borderRadius: BorderRadius.circular(50),
//                                                  color: Colors.grey[200]
//                                              ),
//                                              child: TextField(
//                                                  decoration: InputDecoration(
//                                                    prefixIcon: Icon(Icons.search, color: Colors.grey),
//                                                    border: InputBorder.none,
//                                                    hintStyle: TextStyle(color: Colors.grey),
//                                                    hintText: "Search",
//                                                  )
//                                              )
//                                          )
//                                      )
//                                    ],
//                                  )
//                              )
//                            ],
//                          )
//                      ),
//                      SizedBox(height: 2 * SizeConfig.heightMultiplier,),
//                      Row(
//                        children: <Widget>[
//                          Container(
//                            height: 11 * SizeConfig.heightMultiplier,
//                            width: 22 * SizeConfig.widthMultiplier,
//                            decoration: BoxDecoration(
//                                shape: BoxShape.circle,
//                                image: DecorationImage(
//                                    fit: BoxFit.cover,
//                                    image: AssetImage("assets/images/index.png")
//                                )
//                            ),
//                          ),
//
//                          SizedBox(width: 5 * SizeConfig.widthMultiplier,),
//
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              Text("Neil Sullia Paul", style: TextStyle(
//                                  color: Colors.white,
//                                  fontSize: 3 * SizeConfig.textMultiplier,
//                                  fontWeight: FontWeight.bold
//                              )),
//
//                              SizedBox(height: 1 * SizeConfig.heightMultiplier,),
//
//                              Row(
//                                children: <Widget>[
//                                  Row(
//                                    children: <Widget>[
//                                      Image.asset("assets/fb.png",
//                                        height: 3 * SizeConfig.heightMultiplier,
//                                        width: 3 * SizeConfig.widthMultiplier,
//                                      ),
//                                      SizedBox(width: 2 * SizeConfig.widthMultiplier,),
//
//                                      Text("Neil Sullia Paul", style: TextStyle(
//                                        color: Colors.white,
//                                        fontSize: 1.5 * SizeConfig.textMultiplier,
//                                        //fontWeight: FontWeight.bold
//                                      )),
//                                    ],
//                                  ),
//                                  SizedBox(width: 5 * SizeConfig.widthMultiplier,),
//
//                                  Row(
//                                    children: <Widget>[
//                                      Image.asset("assets/fb.png",
//                                        height: 3 * SizeConfig.heightMultiplier,
//                                        width: 3 * SizeConfig.widthMultiplier,
//                                      ),
//                                      SizedBox(width: 2 * SizeConfig.widthMultiplier,),
//
//                                      Text("Neil Sullia Paul", style: TextStyle(
//                                        color: Colors.white,
//                                        fontSize: 1.5 * SizeConfig.textMultiplier,
//                                        //fontWeight: FontWeight.bold
//                                      )),
//                                    ],
//                                  )
//                                ],
//                              )
//                            ],
//                          )
//                        ],
//                      ),
//
//                      SizedBox(height: 3 * SizeConfig.heightMultiplier,),
//
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Column(
//                            children: <Widget>[
//                              Text("Paul", style: TextStyle(
//                                  color: Colors.white,
//                                  fontSize: 3 * SizeConfig.textMultiplier,
//                                  fontWeight: FontWeight.bold
//                              )),
//                              Text("Paul", style: TextStyle(
//                                color: Colors.white,
//                                fontSize: 1.9 * SizeConfig.textMultiplier,
//                                //fontWeight: FontWeight.bold
//                              )),
//                            ],
//                          ),
//
//                          Column(
//                            children: <Widget>[
//                              Text("Paul", style: TextStyle(
//                                  color: Colors.white,
//                                  fontSize: 3 * SizeConfig.textMultiplier,
//                                  fontWeight: FontWeight.bold
//                              )),
//                              Text("Paul", style: TextStyle(
//                                color: Colors.white,
//                                fontSize: 1.9 * SizeConfig.textMultiplier,
//                                //fontWeight: FontWeight.bold
//                              )),
//                            ],
//                          ),
//
//                          Container(
//                            decoration: BoxDecoration(
//                              border: Border.all(color: Colors.white),
//                              borderRadius: BorderRadius.circular(5.0),
//                            ),
//                            child: Padding(
//                                padding: const EdgeInsets.all(8.0),
//                                child: Text(
//                                    "Edit profile",
//                                    style: TextStyle(
//                                        color: Colors.white,
//                                        fontSize: 1.8 * SizeConfig.textMultiplier
//                                    )
//                                )
//                            ),
//                          )
//                        ],
//                      ),
//                    ],
//                  ),
//                )
//            ),
//
//            Padding(
//                padding: EdgeInsets.only(top: 35 * SizeConfig.heightMultiplier),
//                child: Container(
//                    width: MediaQuery.of(context).size.width,
//                    decoration: BoxDecoration(
//                        color: Colors.white,
//                        borderRadius: BorderRadius.only(
//                          topRight: Radius.circular(30.0),
//                          topLeft: Radius.circular(30.0),
//                        )
//                    ),
//                    child: SingleChildScrollView(
//                      child: Column(
//                        children: <Widget>[
//                          Padding(
//                            padding: EdgeInsets.only(left: 30.0, top: 3 * SizeConfig.heightMultiplier),
//                            child: Text("My Album",
//                                style: TextStyle(
//                                    color: Colors.black,
//                                    fontWeight: FontWeight.bold,
//                                    fontSize: 2.2 * SizeConfig.textMultiplier
//                                )
//                            ),
//                          ),
//
//                          SizedBox(height: 3 * SizeConfig.heightMultiplier,),
//
//                          Container(
//                            height: 40 * SizeConfig.heightMultiplier,
//                            child: ListView(
//                              scrollDirection: Axis.horizontal,
//                              children: <Widget>[
//                                _myAlbumCard("assets/travel.png", "assets/travel2.png", "assets/travel2.png", "assets/travel2.png", "+178", "Best Trip"),
//                                _myAlbumCard("assets/travel.png", "assets/travel2.png", "assets/travel2.png", "assets/travel2.png", "+178", "Best Trip"),
//                                _myAlbumCard("assets/travel.png", "assets/travel2.png", "assets/travel2.png", "assets/travel2.png", "+178", "Best Trip"),
//                                _myAlbumCard("assets/travel.png", "assets/travel2.png", "assets/travel2.png", "assets/travel2.png", "+178", "Best Trip"),
//                                SizedBox(width: 10 * SizeConfig.widthMultiplier,),
//
//                              ],
//                            ),
//                          ),
//
//                          SizedBox(height: 3 * SizeConfig.heightMultiplier,),
//                          Padding(
//                              padding: EdgeInsets.only(left: 30.0, right: 30.0),
//                              child: Row(
//                                children: <Widget>[
//                                  Text(
//                                    "Favourite Places",
//                                    style: TextStyle(
//                                      color: Colors.black,
//                                      fontWeight: FontWeight.bold,
//                                      fontSize: 2.2 * SizeConfig.textMultiplier,
//                                    ),
//                                  ),
//                                  Spacer(),
//                                  Text(
//                                      "View All",
//                                      style: TextStyle(
//                                        color: Colors.grey,
//                                        fontSize: 1.7 * SizeConfig.textMultiplier,
//                                      )
//                                  )
//                                ],
//                              )
//                          ),
//                          SizedBox(height: 3 * SizeConfig.heightMultiplier,),
//                          Container(
//                            height: 20 * SizeConfig.heightMultiplier,
//                            child: ListView(
//                              scrollDirection: Axis.horizontal,
//                              children: <Widget>[
//                                _favouriteCard("assets/travelfive.png"),
//                                _favouriteCard("assets/travelfive.png"),
//                                _favouriteCard("assets/travelfive.png"),
//                                SizedBox(width: 10 * SizeConfig.heightMultiplier,),
//                              ],
//                            ),
//                          ),
//                          SizedBox(height: 3 * SizeConfig.heightMultiplier,),
//                        ],
//                      ),
//                    )
//
//                )
//            ),
//
//
//          ],
//        )
//    );
//  }
//
//  _myAlbumCard(String asset1, String asset2, String asset3, String asset4, String more, String name) {
//    return Padding(
//      padding: const EdgeInsets.only(left: 40.0),
//      child: Container(
//          height: 30 * SizeConfig.heightMultiplier,
//          width: 60 * SizeConfig.widthMultiplier,
//          decoration: BoxDecoration(
//              color: Colors.white,
//              borderRadius: BorderRadius.circular(20.0),
//              border: Border.all(color: Colors.grey, width: 0.2)
//          ),
//
//          child: Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Row(
//                    children: <Widget>[
//                      ClipRRect(
//                        borderRadius: BorderRadius.circular(10.0),
//                        child: Image.asset(asset1, height: 20 * SizeConfig.imageSizeMultiplier, width: 27 * SizeConfig.imageSizeMultiplier, fit: BoxFit.cover),
//                      ),
//                      Spacer(),
//                      ClipRRect(
//                        borderRadius: BorderRadius.circular(10.0),
//                        child: Image.asset(asset2, height: 20 * SizeConfig.imageSizeMultiplier, width: 27 * SizeConfig.imageSizeMultiplier, fit: BoxFit.cover),
//                      )
//                    ],
//                  ),
//
//                  SizedBox(height: 1 * SizeConfig.heightMultiplier,),
//
//                  Row(
//                    children: <Widget>[
//                      ClipRRect(
//                        borderRadius: BorderRadius.circular(10.0),
//                        child: Image.asset(asset3, height: 20 * SizeConfig.imageSizeMultiplier, width: 27 * SizeConfig.imageSizeMultiplier, fit: BoxFit.cover),
//                      ),
//                      Spacer(),
//
//                      Stack(
//                        overflow: Overflow.visible,
//                        children: <Widget>[
//                          ClipRRect(
//                            borderRadius: BorderRadius.circular(10.0),
//                            child: Image.asset(asset4, height: 20 * SizeConfig.imageSizeMultiplier, width: 27 * SizeConfig.imageSizeMultiplier, fit: BoxFit.cover),
//                          ),
//
//                          Container(
//                              height: 20 * SizeConfig.heightMultiplier,
//                              width: 27 * SizeConfig.widthMultiplier,
//                              decoration: BoxDecoration(
//                                color: Colors.black,
//                                borderRadius: BorderRadius.circular(10.0),
//                                //border: Border.all(color: Colors.grey, width: 0.2)
//                              ),
//                              child: Center(
//                                  child: Text(
//                                      more,
//                                      style: TextStyle(
//                                          color: Colors.white,
//                                          fontSize: 2.5 * SizeConfig.textMultiplier
//                                      )
//                                  )
//                              )
//                          )
//                        ],
//                      )
//
//                    ],
//                  ),
//
//                  Padding(
//                      padding: EdgeInsets.only(left: 10.0, top:  2 * SizeConfig.heightMultiplier),
//                      child: Text(
//                        name,
//                        style: TextStyle(
//                            color: Colors.black,
//                            fontSize: 2 * SizeConfig.textMultiplier,
//                            fontWeight: FontWeight.bold
//                        ),
//                      )
//                  )
//                ],
//              )
//          )
//      ),
//    );
//  }
//
//  _favouriteCard(String s) {
//    return Padding(
//        padding: const EdgeInsets.only(left: 40.0),
//        child: ClipRRect(
//            borderRadius: BorderRadius.circular(15.0),
//            child: Image.asset(s, height: 20 * SizeConfig.heightMultiplier, width: 70 * SizeConfig.widthMultiplier, fit: BoxFit.cover,)
//        )
//    );
//
//  }
//}


// listener
//...
//
//List<Post> posts = ...; // your list of contents.
//
//...
//
//
//child: ListView.builder(
//itemBuilder: (BuildContext context, int index) {
//var post = posts[index];
//
//return ListTile(
//title: Text(post.title),
//subtitle: Text('My new post'),
//onTap: () => onTapped(post),
//);
//},
//itemCount: posts.length,
//),
//
//
//...
//
//void onTapped(Post post) {
//// navigate to the next screen.
//}