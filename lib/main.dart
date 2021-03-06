import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(MaterialApp(
  home: Demo(),
  debugShowCheckedModeBanner: false,
));

AudioPlayer player = AudioPlayer();

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player.setAsset('assets/sound.mp3');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player.dispose();
  }

  Function playSound = (){
    player.play();
    return 1;
  };

  Map<int, Widget> output = {1 : DemoApp()};

  @override
  Widget build(BuildContext context) {
    return AnimatedSplash(
        imagePath: 'assets/image.png',
        customFunction: playSound,
        duration: 6000,
        home: DemoApp(),
      outputAndHome: output,
      type: AnimatedSplashType.BackgroundProcess,
    );
  }
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Splash Screen'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text('Hurrah!',textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
        ),
      ),
    );
  }
}












