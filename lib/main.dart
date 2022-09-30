import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text('تطابق الصور'),
       backgroundColor: Colors.indigo[800],
      ),
      body:  ImagePage(),
    ),
  ));
}
class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImg=1;
  int rightImg=5;
  void changeImag(){
    rightImg=Random().nextInt(7);
    leftImg=Random().nextInt(7);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          leftImg == rightImg
              ?'مبروك لقد نجحت'
         // final player = AudioPlayer();
         // player.play(AssetSource('1.m4a'));
              :'حاول مرة أخرى',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(
                    onPressed: (){
                      setState(() {
                       changeImag();
                      });
                    },
                    child: Image.asset('images/img-$leftImg.png')),
              ),
            ),
            Expanded(
                child:Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:TextButton(
                      onPressed: (){
                        setState(() {
                         changeImag();
                        });
                      },
                      child: Image.asset('images/img-$rightImg.png')),
                )
            ),
          ],
        )
      ],
    );
  }
}
