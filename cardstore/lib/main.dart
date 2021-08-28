import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'color_filters.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Card Example';

  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        //theme: ThemeData(primarySwatch: Colors.teal.shade50),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });


  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var image;

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            buildImageInteractionCard(),
            buildImageCard(),
            buildCreditCard(),
            buildGiftCard(),
            buildRoundedCard(),
            buildColoredCard(),


            buildDisplayOnTapCard(),
          ],
        ),
      );

  Widget buildImageInteractionCard() =>
      Card(
        clipBehavior: Clip.antiAlias,

        child: Column(
          children: [
            Stack(
              //alignment: Alignment.center,
              children: [
                Ink.image(
                  image: AssetImage('images/iPhone.jpeg'),
                  height: 300,
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(bottom: 0),
              child: Text(
                'Apple iPhone',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Description'
              ),
            ),
            Row(


              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(

                      onPressed: () {},
                      child: Text('Wishlist'),

                      color: Colors.blue.shade50,

                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: () {},
                      child:
                      Text('Buy Now'),
                      color: Colors.blue.shade50,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );

  Widget buildGiftCard() {
    return Container(

      width: 150,
      height: 200,


      decoration: BoxDecoration(
            border: Border.all(
              color:Colors.lightGreen,
              width: 1.0,
              
            ),
        color: Colors.white,
      ),

      child: ClipRRect(

        child: Stack(
          children: [
            Row(

              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 15.0),
                        child: Column(
                          children: [
                            Text(


                              'Google Ads',
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 10.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.5,
                              ),
                            ),

                              SizedBox(
                                height:30,
                                width:100,
                              ),
                            Text(
                              'Get \$75',
                              style: TextStyle(
                                     fontFamily: 'SourceSansPro',
                                fontSize: 22.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.5,
                              ),
                            ) ,
                            Text(
                              'When you spend \$25',
                               style: TextStyle(
                                 fontWeight: FontWeight.w100,
                                 fontSize: 10.0,
                                 fontFamily: 'SourceSansPro',
                                 letterSpacing: 2.5,
                                 color: Colors.black,
                               ),
                            ),


                               SizedBox(
                                 height: 40,
                                 width: 500,
                                 child: Divider(
                                                                color: Colors.grey.shade400,
                               ) ,                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Free voucher for you' ,
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        fontFamily: 'SourceSansPro',
                                      )
                                ),
                                


                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),


                ),
              
                   Expanded(child:
                   Column(
                     children: [
                       Image(
                        image: AssetImage(
                          'images/gift_card.jpeg',
                        ),
                       ),



                            






                          Text(
                                        '\$75',
                         style: TextStyle(
                           fontSize: 25,
                           fontWeight: FontWeight.bold,
                           color: Colors.green,
                         ),
                       ) ,
                     ],
                   ),
                  ),



              ],
            )


            // Front Side Layout
          ],
        ),
      ),
    );
  }

  Widget buildRoundedCard() =>
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rounded card',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'This card is rounded',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      );

  Widget buildCreditCard() =>
      Card(

        clipBehavior: Clip.antiAlias,


        child: Stack(


          children: [
            Ink.image(
              image: AssetImage('images/card Gradient.jpg'),


              height: 180,


              fit: BoxFit.cover,
            ),
            Column(


              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      'AXIS BANK',
                      textAlign: TextAlign.left,
                      style: TextStyle(

                        fontFamily: 'Roboto',
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      'freecharge',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 10.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70.0,
                  width: 150.0,

                ),

                Row(
                  children: [
                    Text(
                      '4909 09XX XXXX',

                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ],
                ),


                Row(

                  children: [
                    Text(
                      'Platinum Credit Card',
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 10.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                  width: 150.0,

                ),


                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'VALID',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 5.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.5,
                          ),
                        ),
                        Text(
                          'THRU',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 5.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.5,
                          ),
                        )
                      ],
                    ),
                    Text(
                      '12/23',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    )


                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'VISA',


                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ],
                ),
              ],


            ),


          ],
        ),

      );


  Widget buildColoredCard() =>
      Card(
        shadowColor: Colors.red,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.red],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Colored card',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'This card has a gradient',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
      );

  Widget buildImageCard() =>
      Card(
        clipBehavior: Clip.antiAlias,


        child: Stack(
          alignment: Alignment.topLeft,

          children: [
            Ink.image(
              image: AssetImage('images/texture.jpeg'),


              height: 180,


              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(

                children: <Widget>[

                  Text(
                    'Kajal Kumar Dey',
                    style: TextStyle(

                      fontFamily: 'Roboto',
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Digital Engineer',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 10.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),


                  Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.location_on,
                      size: 15,
                      color: Colors.white,
                    ),

                  ),

                  Text(
                    'Tata Digital Mumbai',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 10.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 150.0,

                  ),

                  Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.email,
                      size: 12,
                      color: Colors.white,
                    ),

                  ),

                  Text(
                    'kajal.dey@tatadigital.com',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 10.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5,
                    ),
                  ),

                ],
              ),
            ),


          ],
        ),
      );


  Widget buildDisplayOnTapCard() =>
      Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              //alignment: Alignment.center,
              children: [
                Ink.image(
                  image: AssetImage('images/car2.jpeg'),
                  child: InkWell(
                    onTap: () {
                      change();
                    },
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                FlatButton(
                  onPressed: () {},
                  child: Text('Buy Car'),
                  color: Colors.blue.shade50,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('Buy Car Accessories'),
                  color: Colors.blue.shade50,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                ),
              ],
            )
          ],
        ),
      );

  void change() => 'Hello';
}
