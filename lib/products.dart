import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(bottom:100),
      children: <Widget>[
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                item('assets/picthree.jpeg', 'Banana', '0.25', true),
                item('assets/picfour.jpeg', 'Pineapple', '0.25', false),
                SizedBox(height: 25.0)
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 45.0),
                item('assets/pictwo.jpeg', 'Kiwi', '0.25', false),
                item('assets/picfive.jpeg', 'Lemon', '0.25', true),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget item(String imgPath, String fruitName, String price, bool isFav) {
    return Padding(
      padding:
          EdgeInsets.only(left: 9.0, right: 9.0, top: 6.0, bottom: 6.0),
      child: Container(
        height: 270.0,
        width: (MediaQuery.of(context).size.width / 2) - 18.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 2.0,
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2.0)
            ]),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 170.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: isFav
                          ? Icon(Icons.favorite, color: Colors.red)
                          : Icon(Icons.favorite_border, color: Colors.red)),
                )
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              fruitName,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 7.0),
            Text(
              '\$' + price + ' each',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 16.0, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
