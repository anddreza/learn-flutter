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
//    var assetsImage = new AssetImage('assets/images/flutter.png'); //<- Creates an object that fetches an image.
 //   var image = new Image(image: assetsImage, fit: BoxFit.cover); //<- Creates a widget that displays an image.

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Exemplo'),

        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('button pressed!');
              },
                child: Text('OK1'),

    ),

            SizedBox(height: 30,),

        //botão 2

            ElevatedButton(
              onPressed: () {
                print('button pressed!');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
              ),
              child:
                Text('OK2'),
            ),

            Column(
              children: [
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
              ],
            ),
            //botão 3
            ElevatedButton(
              onPressed: () {
                print('button pressed!');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child:
              Text('OK3'),
            ),
          ],
        ),



      ),
    );



  }
}
