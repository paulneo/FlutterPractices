import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {

  String image;
  String title;
  String date;
  Color color;

  EventCard(this.image, this.title, this.date, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 44,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 105,
            width: 112,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image)
              )
            ),
          ),
          SizedBox(height: 11),
          Container(
            padding: EdgeInsets.only(
              left:14
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left:14
            ),
            child: Text(
            date,
              style: TextStyle(
                fontSize: 8,
                color: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }
}