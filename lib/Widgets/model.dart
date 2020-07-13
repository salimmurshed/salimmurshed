
import 'dart:convert';

List<port> portFromJson(String str) =>
    List<port>.from(json.decode(str).map((x) => port.fromJson(x)));

String portToJson(List<port> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class port {
  String id;
  String type;
  String lang;
  String name;
  String image;
  List<String> img;
  
  port({this.id, this.type, this.name, this.image, this.lang, this.img});
  
  port.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    lang = json['lang'];
    name = json['name'];
    image = json['image'];
    img = json['img'].cast<String>();
  }
  
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['lang'] = this.lang;
    data['name'] = this.name;
    data['image'] = this.image;
    data['img'] = this.img;
    return data;
  }
}