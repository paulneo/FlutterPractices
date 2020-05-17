import 'package:flutter/material.dart';
import 'package:practices_one/Home/event_card.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool openMenu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context)
        ],
      ),
    );
  }

  Widget menu(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              bottom: 10
            ),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    right: 10
                  ),
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 10
            ),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    right: 10
                  ),
                  child: Icon(
                    Icons.event,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Dates',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 10
            ),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    right: 10
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'My Events',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
 
  Widget dashboard(context){
    return AnimatedPositioned(
      top: 0,
      bottom: 0,
      left: openMenu ? MediaQuery.of(context).size.width * 0.4 :  0,
      right: 0,
      duration: Duration(milliseconds: 200),
      child: Material(
        color: Color(0xFF1A1A1A),
        animationDuration:Duration(milliseconds: 200) ,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/backHome.png')
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(
                top:70
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onTap: () {
                            setState(() {
                              openMenu = !openMenu;
                            });
                          },
                        ),
                        Text(
                          'EH',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 31,
                          ),
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          'Evento Proximo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  SizedBox(height: 33),
                  Text(
                    'Panic!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 33,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'At the disco',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 33,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 45),
                  Stack(  
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(
                                right: 5
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                              decoration: BoxDecoration(
                                color: Color(0xFFE21F35),
                                borderRadius: BorderRadius.circular(40)
                              ),
                              child: Text(
                                'ver fechas',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10
                                ),
                              ),  
                            ),
                          ),
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 5
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40)
                              ),
                              child: Text(
                                'boletos',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10
                                ),
                              ),  
                            ),
                          ),
                        ],
                      ),
                      openMenu ? 
                        SizedBox()
                        : Positioned(
                        right: 40,
                        top: 5,
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                        )
                      )
                    ],
                  ),
                  SizedBox(height: 60),
                  openMenu ? 
                  SizedBox(height: 18)
                  : Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Eventos en tu ciudad',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'por fecha',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.arrow_drop_down,
                                color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 18),
                  Container(
                    height: 156,
                    child: ListView(
                      padding: EdgeInsets.only(
                        left: 51
                      ),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        EventCard('assets/images/event1.png', 'Music Fest', 'Junio 2020', Color(0xFF350938)),
                        EventCard('assets/images/event2.png', 'Security', 'Agosto 2020', Color(0xFF380914)),
                        EventCard('assets/images/event3.png', 'Runner', 'Setiembre 2020', Color(0xFF160938)),
                      ],
                    ),
                  ), 
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.only(
                      left: 51 
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                    'Evento Pasados',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13
                      ),
                    ),
                  ),
                  SizedBox(height: 27),
                  Container(
                    padding: EdgeInsets.only(
                      left: 51,
                      right: 51 
                    ),
                    height: 157,
                    width: 321,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/eventPast.png')
                      )
                    ),
                  ),
                ],
              ),
            ),
          ], 
        ),
      ),
    );   
  } 
}