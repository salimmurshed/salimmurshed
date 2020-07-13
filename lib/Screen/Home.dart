import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../Widgets/ProtData.dart';
import '../Widgets/Utils.dart';
import '../Widgets/model.dart';

final _control1 = new PageController();
final _control2 = new PageController();
const _kDuration = const Duration(milliseconds: 300);
const _kCurve = Curves.ease;


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}
bool _progressController = true;
class _HomeState extends State<Home> {
  
  
  List<port> Port;
  
  @override
  void initState() {
    super.initState();
    ContinentServices().getContinent().then((Porat) {
      setState(() {
        _progressController = false;
        Port = Porat;
      });
    });
  }

  
  @override
  Widget build(BuildContext context) {
  
    
    final widths = MediaQuery.of(context).size.width;
    final heights = MediaQuery.of(context).size.height;
    
    return Material(
      child: Container(
        child: Column(
          children: [
            Head(widths, heights, context),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffF0EEEB)),
              width: widths * 1,
              height: heights * .88,
              child: ListView(
                children: [
                  Container(
                      decoration: BoxDecoration(color: Color(0xff08012E)),
                      height: heights * .5,
                      child: Center(
                        child: Column(
                          children: [
                            Stack(
                              children: <Widget>[
                                // Stroked text as border.
                                Text(
                                  'PortFolio',
                                  style: TextStyle(
                                    fontSize: widths * .1,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 120
                                      ..color = Color(0xff7A71AB),
                                    ),
                                  ), // Solid text as fill.
                                Text(
                                  'PortFolio',
                                  style: TextStyle(
                                    fontSize: widths * .1,
                                    color: Color(0xff08012E),
                                    ),
                                  ),
                              ],
                              ),
                            Stack(
                              children: <Widget>[
                                // Stroked text as border.
                                Text(
                                  'Salim Murshed',
                                  style: TextStyle(
                                    fontSize: widths * .05,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 120
                                      ..color = Color(0xff7A71AB),
                                    ),
                                  ), // Solid text as fill.
                                Text(
                                  'Salim Murshed',
                                  style: TextStyle(
                                    fontSize: widths * .05,
                                    color: Color(0xff08012E),
                                    ),
                                  ),
                              ],
                              ),
                            Center(
                              child: Container(
                                width: widths * .6,
                                child: Text(
                                  "Flutter App UI/UX Developer, Android & IOS and Website Developer.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Nunito-light",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 32,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),
                                  ),
                                ),
                              ),
                            Center(
                              child: Container(
                                width: widths * .6,
                                child: Text(
                                  "Flutter Application Developer & Designer.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Nunito-light",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),
                                  ),
                                ),
                              ),
                          ],
                          ),
                        )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(00, 20, 00, 00),
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(width: widths * .01,),
                          Container(
                            color: Color(0xff08012E),
                            width: 5,
                            height: 50,
                            child: SizedBox(
                              width: 2,
                              height: 10,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 00, 00, 00),
                            child: Text("Submitted Work Handed Over to the Client", style: portName,),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(00, 20, 00, 00),
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(width: widths * .02,),
                          Container(
                            color: Color(0xff08012E),
                            width: 5,
                            height: 50,
                            child: SizedBox(
                              width: 2,
                              height: 10,
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 00, 00, 00),
                            child: Text("Android and IOS app", style: portSubNameH,),
                            )
                        ],
                        ),
                      ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.0),
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(AntDesign.caretleft, color: Color(0xff0C003E),),
                            ),
                          ),
                        onTap: () => _control1.previousPage(
                            duration: _kDuration, curve: _kCurve),
                        ),
                      Container(
                        decoration: BoxDecoration(color: Color(0xffF0EEEB)),
                        width: widths * .9,
                        height: heights * .62,
                        child: Container(
                          alignment: Alignment.center,
                          height: heights * .62,
                          child: _progressController
                                 ? CircularProgressIndicator()
                                 : ListView.builder(
                              scrollDirection: Axis.horizontal,
                              controller: _control1,
                              itemCount: Port.length,
                              itemBuilder: (BuildContext context, int index) {
                                print(Port.length);
                                return Port[index].type == "Android & IOS App" ? Container(
                                  height: heights * .62,
                                  child: Padding(
                                    padding:  EdgeInsets.all(heights * .02),
                                    child: Image.network(
                                    Port[index].image, height: heights * .48,
                                      loadingBuilder: (BuildContext ctx, Widget child, ImageChunkEvent loadingProgress) {
                                        if (loadingProgress == null) {
                                          return Column(
                                            children: [
                                              Image.network(Port[index].image, height: heights * .48,),
                                              Text(Port[index].name, style: portSubNameH),
                                              Text(Port[index].type, style: portSubName),
                                              Text(Port[index].lang, style: portSubName),
                                            ],
                                          );
                                        }else {
                                          return Container(
                                            height: heights * .48,
                                            child: Center(
                                              child: Image.network("https://i.ya-webdesign.com/images/minimalist-transparent-loading-gif-1.gif",
                                                                     height: heights *.05,),
                                              ),
                                            );
                                        }
                                      },
                                      ),
                                  ),
                                  ): Container();
                              }),
                        ),),
                      GestureDetector(
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(width: 0.0),
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(AntDesign.caretright, color: Color(0xff0C003E)),
                              ),
                            ),
                        onTap: () => _control1.nextPage(
                            duration: _kDuration, curve: _kCurve),
                          ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(00, 20, 00, 00),
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(width: widths * .02,),
                          Container(
                            color: Color(0xff08012E),
                            width: 5,
                            height: 50,
                            child: SizedBox(
                              width: 2,
                              height: 10,
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 00, 00, 00),
                            child: Text("Business Website", style: portSubNameH,),
                            )
                        ],
                        ),
                      ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.0),
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(AntDesign.caretleft, color: Color(0xff0C003E),),
                            ),
                          ),
                        onTap: () => _control2.previousPage(
                            duration: _kDuration, curve: _kCurve),
                        ),
                      Container(
                        decoration: BoxDecoration(color: Color(0xffF0EEEB)),
                        width: widths * .9,
                        height: heights * .62,
                        child: Container(
                          alignment: Alignment.center,
                          height: heights * .62,
                          child: _progressController
                                 ? CircularProgressIndicator()
                                 : ListView.builder(
                              scrollDirection: Axis.horizontal,
                              controller: _control2,
                              itemCount: Port.length,
                              itemBuilder: (BuildContext context, int index) {
                                print(Port.length);
                                return Port[index].type == "Business Website" ? Container(
                                  height: heights * .62,
                                  child: Padding(
                                    padding:  EdgeInsets.all(heights * .02),
                                    child: Image.network(
                                      Port[index].image, height: heights * .48,
                                      loadingBuilder: (BuildContext ctx, Widget child, ImageChunkEvent loadingProgress) {
                                        if (loadingProgress == null) {
                                          return Column(
                                            children: [
                                              Image.network(Port[index].image, height: heights * .48,),
                                              Text(Port[index].name, style: portSubNameH),
                                              Text(Port[index].type, style: portSubName),
                                              Text(Port[index].lang, style: portSubName),
                                            ],
                                            );
                                        }else {
                                          return Container(
                                            height: heights * .48,
                                            child: Center(
                                              child: Image.network("https://i.ya-webdesign.com/images/minimalist-transparent-loading-gif-1.gif",
                                                                     height: heights *.05,),
                                              ),
                                            );
                                        }
                                      },
                                      ),
                                    ),
                                  ): Container();
                              }),
                          ),),
                      GestureDetector(
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.0),
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(AntDesign.caretright, color: Color(0xff0C003E)),
                            ),
                          ),
                        onTap: () => _control2.nextPage(
                            duration: _kDuration, curve: _kCurve),
                        ),
                    ],
                    ),
                  Footer(widths, heights, context)
                ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
CircularProgressIndicator(){
  return Container(
    child: Image.network("https://i.ya-webdesign.com/images/minimalist-transparent-loading-gif-1.gif"),
    );
}