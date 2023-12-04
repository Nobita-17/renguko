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
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Icon(Icons.phone_in_talk),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Talk'),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.deepOrange, // This sets the background color
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Icon(Icons.toys),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Play'),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.deepOrange, // This sets the background color
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isShow = !_isShow;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Icon(Icons.task_alt),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Daily Task'),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.deepOrange, // This sets the background color
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          if (_isShow)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.emoji_food_beverage_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Food'),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .deepOrange[400], // This sets the background color
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.face),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Tickel'),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .deepOrange[400], // This sets the background color
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.light_mode_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Fight'),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .deepOrange[400], // This sets the background color
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
