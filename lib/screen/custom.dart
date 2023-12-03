import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  bool _isShow = false;

  @override
  Widget build(BuildContext context) {
    return Center(
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
      );

  }
  }