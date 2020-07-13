import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:salimmurshed/Screen/Home.dart';
import 'package:salimmurshed/Screen/PortFolio.dart';

final H1 = TextStyle(
    fontFamily: "Nunito-light",
    fontWeight: FontWeight.w300,
    fontSize: 24,
    color: Colors.white,
    decoration: TextDecoration.none);

final H2 = TextStyle(
    fontFamily: "Nunito-light",
    fontWeight: FontWeight.w300,
    fontSize: 16,
    color: Colors.white,
    decoration: TextDecoration.none);

final portName = TextStyle(
    fontFamily: "Nunito-light",
    fontWeight: FontWeight.w300,
    fontSize: 22,
    color: Color(0xff0C0040),
    decoration: TextDecoration.none);

final portSubName = TextStyle(
    fontFamily: "Nunito-light",
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Color(0xff0C0040),
    decoration: TextDecoration.none);

final portSubNameH = TextStyle(
    fontFamily: "Nunito-light",
    fontWeight: FontWeight.w900,
    fontSize: 16,
    color: Color(0xff0C0040),
    decoration: TextDecoration.none);

Head(widths, heights, context){
  return Container(
    decoration: BoxDecoration(color: Color(0xff08012E)),
    width: widths * 1,
    height: heights * .1,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 220, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Text(
              "Salim Murshed",
              style: H1,
              ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
                );
            },
            ),
          Container(
            width: widths * .3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Text(
                    "PortFolio",
                    style: H2,
                    ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Portfolio()),
                      );
                  },
                  ),
                Text(
                  "About Me",
                  style: H2,
                  ),
                Text(
                  "Contact Me",
                  style: H2,
                  ),
              ],
              ),
            )
        ],
        ),
      ),
    );
}

Footer(widths, heights, context){
  return Container(
    color: Color(0xff08012E),
    height: heights * .4,
    width: widths * 1,
    child:
    Padding(
      padding:  EdgeInsets.fromLTRB(widths * .1, widths * .02, widths * .1, widths * .02),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Text(
                    "Salim Murshed",
                    style: H1,
                    ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                      );
                  },
                ),
                SizedBox(height: heights *.05,),
                GestureDetector(
                  child: Text(
                    "PortFolio",
                    style: H2,
                    ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Portfolio()),
                      );
                  },
                ),
                Text(
                  "About Me",
                  style: H2,
                  ),
                Text(
                  "Contact Me",
                  style: H2,
                  ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                "Freelancing Sites",
                style: H1,
                ),
                Image.asset("../lib/Assets/img/free.png", height: heights * .05,),
                Image.asset("../lib/Assets/img/upwork.png", height: heights * .05,),
                Image.asset("../lib/Assets/img/five.png", height: heights * .05,),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Me at a glance",
                  style: H1,
                  ),
                Row(
                  children: [
                    Icon(AntDesign.piechart, color: Colors.white,),
                    Text(" Experienced Level", style: H2,)
                  ],
                ),
                Row(
                  children: [
                    Icon(FontAwesome.calendar, color: Colors.white,),
                    Text(" Since 2020", style: H2,)
                  ],
                  ),
                Row(
                  children: [
                    Icon(MaterialCommunityIcons.web, color: Colors.white,),
                    Text(" Web Designer", style: H2,)
                  ],
                  ),
                Row(
                  children: [
                    Icon(AntDesign.android1, color: Colors.white,),
                    Text(" Android Designer", style: H2,)
                  ],
                  ),
                Row(
                  children: [
                    Icon(MaterialIcons.phone_iphone, color: Colors.white,),
                    Text(" IOS Designer", style: H2,)
                  ],
                  ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}