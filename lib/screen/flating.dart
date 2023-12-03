import 'package:flutter/material.dart';

class MyAppHome extends StatefulWidget {
  const MyAppHome({Key? key}) : super(key: key);

  @override
  State<MyAppHome> createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome> {
  bool _isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('button1')),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: () {}, child: Text('button2')),
                SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isShow = !_isShow;
                    });
                  },
                  child: Text('button3'),
                ),
              ],
            ),
            SizedBox(height: 20,),
            if (_isShow)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: () {}, child: Text('child1')),
                  SizedBox(width: 10,),
                  ElevatedButton(onPressed: () {}, child: Text('child2')),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
