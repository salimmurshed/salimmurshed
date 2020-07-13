import 'model.dart';

class ContinentServices {
  Future<List<port>> getContinent() {
    String jsonString = ''' [
    {
        "id": "1",
        "type": "Android & IOS App",
        "lang": "Flutter",
        "name": "Medical Esthetic User",
        "image": "https://i.ibb.co/tzRD5Lt/1.png",
        "img": [
            "https://i.ibb.co/tzRD5Lt/1.png",
            "https://i.ibb.co/m62MSv4/2.png",
            "https://i.ibb.co/kBh1s3t/3.png",
            "https://i.ibb.co/qmW6cSP/4.png",
            "https://i.ibb.co/2qBWVYj/5.png",
            "https://i.ibb.co/T46DpR4/6.png",
            "https://i.ibb.co/7JSzHHv/7.png"
        ]
    },
    {
        "id": "2",
        "type": "Android & IOS App",
        "lang": "Flutter",
        "name": "Pudo Delivery App",
        "image": "https://i.ibb.co/vLxWLsc/1.png",
        "img": [
            "https://i.ibb.co/vLxWLsc/1.jpg",
            "https://i.ibb.co/10GB5Wj/3.jpg",
            "https://i.ibb.co/St4h8xQ/4.png",
            "https://i.ibb.co/P4K9DD6/5.png",
            "https://i.ibb.co/F5rJRhJ/6.png",
            "https://i.ibb.co/k3Sc6cR/7.png"
        ]
    },
    {
        "id": "3",
        "type": "Android & IOS App",
        "lang": "Flutter",
        "name": "Medical Esthetic Doctor",
        "image": "https://i.ibb.co/VHLhvp8/1.png",
        "img": [
            "https://i.ibb.co/VHLhvp8/1.png",
            "https://i.ibb.co/ygFg4YJ/2.png",
            "https://i.ibb.co/ypGqQR8/3.png",
            "https://i.ibb.co/5kQTYTd/4.png",
            "https://i.ibb.co/qj5JRFq/5.png",
            "https://i.ibb.co/sbQtbg8/6.png",
            "https://i.ibb.co/dcbXV5n/7.png",
            "https://i.ibb.co/pZxJC6L/8.png"
        ]
    },
    {
        "id": "4",
        "type": "Business Website",
        "lang": "Flutter",
        "name": "Temuruang",
        "image": "https://i.ibb.co/wKQnjJX/1.png",
        "img": [
            "https://i.ibb.co/wKQnjJX/1.png",
            "https://i.ibb.co/dQHtsty/2.png",
            "https://i.ibb.co/64Kwr9m/3.png",
            "https://i.ibb.co/RHftyCd/4.png",
            "https://i.ibb.co/sCRPwkW/5.png",
            "https://i.ibb.co/yfFzX7n/6.png",
            "https://i.ibb.co/cxKZ1KR/7.png"
        ]
    },
    {
        "id": "2",
        "type": "Business Website",
        "lang": "Flutter",
        "name": "Temuruang",
        "image": "https://i.ibb.co/wKQnjJX/1.png",
        "img": [
            "https://i.ibb.co/wKQnjJX/1.png",
            "https://i.ibb.co/dQHtsty/2.png",
            "https://i.ibb.co/64Kwr9m/3.png",
            "https://i.ibb.co/RHftyCd/4.png",
            "https://i.ibb.co/sCRPwkW/5.png",
            "https://i.ibb.co/yfFzX7n/6.png",
            "https://i.ibb.co/cxKZ1KR/7.png"
        ]
    }
]

    ''';
    List<port> portList = portFromJson(jsonString);
    return Future.value(portList);
  }
}