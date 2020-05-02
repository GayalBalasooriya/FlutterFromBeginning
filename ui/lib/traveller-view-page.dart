import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/reg-page.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double textMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;
  static double widthMultiplier;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    textMultiplier = blockSizeVertical;
    imageSizeMultiplier = blockSizeHorizontal;
    heightMultiplier = blockSizeVertical;
    widthMultiplier = blockSizeHorizontal;
  }
 }

class TravellerView extends StatefulWidget {
  @override
  _TravellerViewState createState() => _TravellerViewState();
}

class _TravellerViewState extends State<TravellerView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 40 * SizeConfig.heightMultiplier,
            child: Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 4 * SizeConfig.heightMultiplier),
              child: Column(
                children: <Widget>[
                  Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              height: 8 * SizeConfig.heightMultiplier,
                              padding: EdgeInsets.only(top: 20),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              color: Colors.grey[200]
                                          ),
                                          child: TextField(
                                              decoration: InputDecoration(
                                                prefixIcon: Icon(Icons.search, color: Colors.grey),
                                                border: InputBorder.none,
                                                hintStyle: TextStyle(color: Colors.grey),
                                                hintText: "Search",
                                              )
                                          )
                                      )
                                  )
                                ],
                              )
                          )
                        ],
                      )
                  ),
                  SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 8 * SizeConfig.heightMultiplier,
                        width: 15 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/index.png")
                          )
                        ),
                      ),

                      SizedBox(width: 6 * SizeConfig.widthMultiplier,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("FirstName "+"LastName", style: TextStyle(
                            color: Colors.white,
                            fontSize: 3 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold
                          )),

                          SizedBox(height: 1 * SizeConfig.heightMultiplier,),

                          Text("Country", style: TextStyle(
                            color: Colors.white,
                            fontSize: 1.5 * SizeConfig.textMultiplier,
                            //fontWeight: FontWeight.bold
                          )),

                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 2 * SizeConfig.heightMultiplier,),

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Edit profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 1.8 * SizeConfig.textMultiplier
                        )
                      )
                    ),
                  )
                ],
              ),
            )
          ),

          Padding(
            padding: EdgeInsets.only(top: 30 * SizeConfig.heightMultiplier),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                )
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier),
                      child: Text("Popular Places in Sri Lanka",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 2.2 * SizeConfig.textMultiplier
                          )
                      ),
                    ),

                    //SizedBox(height: 0.1 * SizeConfig.heightMultiplier,),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 3.0),
                      child: Container(
                        height: 45 * SizeConfig.heightMultiplier,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.grey, width: 0.4)
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 15.0),
                          child: _albumCardListView(),
                        )
                      ),
                    ),


                    SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                    Padding(
                        padding: EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Favourite Places",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 2.2 * SizeConfig.textMultiplier,
                              ),
                            ),
                            Spacer(),
//                            Text(
//                                "View All",
//                                style: TextStyle(
//                                  color: Colors.grey,
//                                  fontSize: 1.7 * SizeConfig.textMultiplier,
//                                )
//                            )
                          ],
                        )
                    ),
                    SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                    Container(
                      height: 25 * SizeConfig.heightMultiplier,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _favouriteCard("assets/images/view.png"),
                          _favouriteCard("assets/images/view.png"),
                          _favouriteCard("assets/images/view.png"),
                          SizedBox(width: 10 * SizeConfig.heightMultiplier,),
                        ],
                      ),
                    ),
                    SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                  ],
                ),
              )

            )
          ),


        ],
      )
    );
  }

  _albumCardListView() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Row(
          children: <Widget>[
            GestureDetector(
              child: _myAlbumSingleCardView("assets/images/view.png", "Hey"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
            ),
            Spacer(),
            _myAlbumSingleCardView("assets/images/view.png", "Hi"),
          ],
        ),

        SizedBox(height: 3 * SizeConfig.heightMultiplier,),

        Row(
          children: <Widget>[
            _myAlbumSingleCardView("assets/images/view.png", "Hey"),
            Spacer(),
            _myAlbumSingleCardView("assets/images/view.png", "Hi"),
          ],
        ),

        SizedBox(height: 3 * SizeConfig.heightMultiplier,),

        Row(
          children: <Widget>[
            _myAlbumSingleCardView("assets/images/view.png", "Hey"),
            Spacer(),
            _myAlbumSingleCardView("assets/images/view.png", "Hi"),
          ],
        ),
      ],
    );
  }

  _favouriteCard(String s) {
    return GestureDetector(
      child:Padding(
          padding: const EdgeInsets.only(left: 40.0),
//      child: ClipRRect(
//          borderRadius: BorderRadius.circular(15.0),
//          child: Image.asset(s, height: 20 * SizeConfig.heightMultiplier, width: 70 * SizeConfig.widthMultiplier, fit: BoxFit.cover,)
//      )
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: Colors.grey, width: 0.4)
              ),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(s, height: 20 * SizeConfig.heightMultiplier, width: 70 * SizeConfig.widthMultiplier, fit: BoxFit.cover,)
                  ),
                  Text(
                      "Hey"
                  )
                ],
              )
          )
      ),
      onTap: () {
        print('Hi');
      },
    );
//    return Padding(
//      padding: const EdgeInsets.only(left: 40.0),
////      child: ClipRRect(
////          borderRadius: BorderRadius.circular(15.0),
////          child: Image.asset(s, height: 20 * SizeConfig.heightMultiplier, width: 70 * SizeConfig.widthMultiplier, fit: BoxFit.cover,)
////      )
//      child: Container(
//          decoration: BoxDecoration(
//              color: Colors.white,
//              borderRadius: BorderRadius.circular(20.0),
//              border: Border.all(color: Colors.grey, width: 0.4)
//          ),
//          child: Column(
//            children: <Widget>[
//              ClipRRect(
//                borderRadius: BorderRadius.circular(15.0),
//                child: Image.asset(s, height: 20 * SizeConfig.heightMultiplier, width: 70 * SizeConfig.widthMultiplier, fit: BoxFit.cover,)
//              ),
//              Text(
//                  "Hey"
//              )
//            ],
//          )
//      )
//    );

  }

  _myAlbumSingleCardView(String asset, String text) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.grey, width: 0.4)
        ),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(asset, height: 40 * SizeConfig.imageSizeMultiplier, width: 32 * SizeConfig.imageSizeMultiplier, fit: BoxFit.cover),
            ),
            Text(text),
            Container(
            )
          ],
        ),
    );
  }
}
