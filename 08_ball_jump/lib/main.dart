import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

void main() => runApp(Ball());

class Ball extends StatefulWidget {
  _ballDump createState() => _ballDump();
}

class _ballDump extends State<Ball> with SingleTickerProviderStateMixin {
  
  AnimationController controller;
  SpringSimulation simulation;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    simulation = SpringSimulation(
      SpringDescription(
        mass: 1, // khối lượng
        stiffness: 50, // độ cứng
        damping: 1, // độ giảm xóc
      ),
      100.0, // điểm bắt đầu
      500.0, // điểm kết thúc
      10, // vận tốc
    );

    controller = 
    AnimationController(vsync: this, upperBound: 500)
    ..addListener((){
      print(controller.value);
      setState(() {});
    });

    controller.animateWith(simulation);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 180,
            top: controller.value,
            width: 50,
            height: 50,
            child: Container(
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.redAccent
              ),
            ),
            
          )
        ],
      ),
    ));
  }

  // @override 
  // void dispose(){
  //   controller.dispose();
  //   super.dispose();
  // }
}
