import 'package:flutter/material.dart';

void main(){
  runApp(const myAp());
}

class myAp extends StatefulWidget {
  const myAp({super.key});

  @override
  State<myAp> createState() => _myApState();
}

class _myApState extends State<myAp> {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/images/flutter.png'); //<- Creates an object that fetches an image.
    var image = new Image(image: assetsImage, fit: BoxFit.cover); //<- Creates a widget that displays an image.

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Exemplo'),
        ),

        body:

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(child: image),
            Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard "
                "dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen"
                " book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially "
                "unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and"
                " more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.normal
              ),
            ),
            SizedBox(height: 30,),

            // ↓ Add this.
            ElevatedButton(
              onPressed: () {
                print('button pressed!');
              },
              child: Text('OK'),
            ),
            ],

        ),



      ),
    );



  }
}
