import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../Widgets/ProtData.dart';
import '../Widgets/Utils.dart';
import '../Widgets/model.dart';



class Portfolio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<port> Port;
  
  @override
  void initState() {
    super.initState();
    ContinentServices().getContinent().then((continents) {
      setState(() {
        Port = continents;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    
    const _kDuration = const Duration(milliseconds: 300);
    const _kCurve = Curves.ease;
    final widths = MediaQuery.of(context).size.width;
    final heights = MediaQuery.of(context).size.height;
    ScrollController controller = ScrollController();
    ScrollPhysics physics = ScrollPhysics();
    
    return Material(
      child: Column(
        children: [
          Head(widths, heights,context),
              Column(
                children: [
                  Container(
                    color: Color(0xffE1D9FE),
                    width: widths * 1,
                    height: heights * .88,
                    child: Center(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: null == Port ? 0 : Port.length,
                        itemBuilder: (BuildContext context, int index) {
                          final control$index = new PageController();
                          final control2$index = new PageController();
                            return Column(
                              children: [
                                Card(
                                  elevation: 10,
                                  child: Center(
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            width: widths * 1,
                                            height: heights * .55,
                                            child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                Column(
                                                  children: [
                                                    Container(
                                                      width: widths * .2,
                                                      height: heights * .3,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Center(
                                                            child: Text(Port[index].name,style: portName,),
                                                            ),
                                                          Center(
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Text("Type: ",style: portSubNameH,),
                                                                Text(Port[index].type,style: portSubName,),
                                                              ],
                                                              ),
                                                            ),
                                                          Center(
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Text("Language: ",style: portSubNameH,),
                                                                Text(Port[index].lang,style: portSubName,),
                                                              ],
                                                              ),
                                                            ),
                                                        ],
                                                        ),
                                                      ),
                                                    Row(
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
                                                          onTap: () => control$index.previousPage(
                                                              duration: _kDuration, curve: _kCurve),
                                                          ),
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
                                                            onTap: () { control$index.nextPage(
                                                                duration: _kDuration, curve: _kCurve);
                                                            }
                                                            ),
                                                        GestureDetector(
                                                            child: Card(
                                                              elevation: 5.0,
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(width: 0.0),
                                                                  borderRadius: BorderRadius.circular(50)),
                                                              child: Padding(
                                                                padding: const EdgeInsets.all(10.0),
                                                                child: Icon(MaterialIcons.photo_size_select_large, color: Color(0xff0C003E)),
                                                                ),
                                                              ),
                                                            onTap: () {
                                                              showDialog(
                                                                  context: context,
                                                                  builder: (BuildContext context){
                                                                    return Container(
                                                                      height: heights * .6,
                                                                      width: widths * .6,
                                                                      child: AlertDialog(
                                                                        title: Row(
                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Row(
                                                                              children: [
                                                                                Text("App Name: ",style: portSubNameH,),
                                                                                Text(Port[index].name,style: portSubName,),
                                                                              ],
                                                                              ),
                                                                            InkWell(
                                                                              child: Icon(Entypo.circle_with_cross, color: Color(0xff0E0142),),
                                                                              onTap: (){
                                                                                Navigator.pop(context);
                                                                              },
                                                                              )
                                                                          ],
                                                                          ),
                                                                        content: Container(
                                                                          height: heights * .6,
                                                                          width: widths * .6,
                                                                          child:
                                                                          Row(
                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                                                onTap: () => control2$index.previousPage(
                                                                                    duration: _kDuration, curve: _kCurve),
                                                                                ),
                                                                              Container(
                                                                                color: Colors.brown,
                                                                                height: heights * .6,
                                                                                width: widths * .5,
                                                                                child:
                                                                                PageView.builder(
                                                                                    scrollDirection: Axis.horizontal,
                                                                                    controller: control2$index,
                                                                                    itemCount: null == Port[index].img
                                                                                               ? 0
                                                                                               : Port[index].img.length,
                                                                                    itemBuilder: (BuildContext context, int i) {
                                                                                      return Image.network(Port[index].img[i]);}),
                                                                                ),
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
                                                                                  onTap: () { control2$index.nextPage(
                                                                                      duration: _kDuration, curve: _kCurve);
                                                                                  }
                                                                                  )
                                                                            ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                  }
                                                                  );
                                                            }
                                                            )
                                                      ],
                                                      ),
                                                  ],
                                                  ),
                                                Container(
                                                  width: widths * .79,
                                                  height: heights * .5,
                                                  child: ListView.builder(
                                                      controller: control$index,
                                                      scrollDirection: Axis.horizontal,
                                                      itemCount: null == Port[index].img
                                                                 ? 0
                                                                 : Port[index].img.length,
                                                      itemBuilder: (BuildContext context, int i) {
                                                        return Container(
                                                          width: widths * .17,
                                                          height: heights * .5,
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                            children: [
                                                              Container(
                                                                  decoration: BoxDecoration(
                                                                      color: Color(0xff0E0142),
                                                                      border: Border.all(
                                                                          color: Color(0xff0C0040)),
                                                                      borderRadius: BorderRadius.circular(5)),
                                                                  height: heights * .5,
                                                                  width: widths * .15,
                                                                  child: InkWell(
                                                                    child: Image.network(
                                                                      Port[index].img[i],
                                                                      height: heights * .5,
                                                                      ),
                                                                    onTap: (){
                                                                      showDialog(
                                                                          context: context,
                                                                          builder: (BuildContext context){
                                                                            return Container(
                                                                              height: heights * .6,
                                                                              width: widths * .6,
                                                                              child: AlertDialog(
                                                                                title: Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Row(
                                                                                      children: [
                                                                                        Text("App Name: ",style: portSubNameH,),
                                                                                        Text(Port[index].name,style: portSubName,),
                                                                                      ],
                                                                                      ),
                                                                                    InkWell(
                                                                                      child: Icon(Entypo.circle_with_cross, color: Color(0xff0E0142),),
                                                                                      onTap: (){
                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                      )
                                                                                  ],
                                                                                  ),
                                                                                content: Container(
                                                                                  height: heights * .6,
                                                                                  width: widths * .6,
                                                                                  child:
                                                                                  Container(
                                                                                      height: heights * .6,
                                                                                      width: widths * .5,
                                                                                      child:Image.network(Port[index].img[i])
                                                                                      ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                          }
                                                                          );
                                                                    },
                                                                    )),
                                                              //SizedBox(width: widths * .02,)
                                                            ],
                                                            ),
                                                          );
                                                      }),
                                                  ),
                                              ],
                                              ),
                                            ),
                                          SizedBox(height: heights * .00,),
                                        ],
                                        ),
                                      ),
                                    ),
        
                                  ),
                              ],
                              ); ; // zero height
                        },
                        separatorBuilder: (_, __) => Divider(height: 0.5),
                         
//                          separatorBuilder: (BuildContext context, int index) {
//                            if (index % 3 == 0 ) {
//                              return Footer(widths, heights, context);
//                            }
//                            return Divider();
//                          },
                        ),
                      ),
                    ),
                ],
              )
            
          
        ],
      ),
    );
  }
}
