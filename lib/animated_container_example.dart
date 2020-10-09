import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> with SingleTickerProviderStateMixin {
  double _height = 100;
  Color _color = Colors.pink;
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween(
        begin: 0.0,
        end: 1.0
    ).animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 8,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {

              },
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              AnimatedContainer(
                color: _color,
                height: _height,
                curve: Curves.decelerate,
                duration: Duration(seconds: 1),
              ),
              FadeTransition(
                opacity: _animation,
                child: OutlineButton(
                  child: Text("Cambiar"),
                  onPressed: () {
                    setState(() {
                      _height += 50;
                      _color = Colors.green;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
