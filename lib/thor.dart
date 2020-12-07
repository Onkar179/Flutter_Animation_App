import 'package:flutter/material.dart';

// ignore: camel_case_types
class thor extends StatefulWidget {
  @override
  mythor createState() => mythor();
}

// ignore: camel_case_types
class mythor extends State<thor> with TickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(duration: Duration(seconds: 2), vsync: this);

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.easeInCubic)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    print(animation);

    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellow,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 180),
              child: Card(
                color: Colors.black,
                elevation: 45 * animation.value,
                child: GestureDetector(
                  onTap: () {
                    myanicon.forward(from: 0.5);
                  },
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: 500 * animation.value + 10,
                          height: 500 * animation.value + 10,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/thor.gif'),
                                  fit: BoxFit.fill)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
