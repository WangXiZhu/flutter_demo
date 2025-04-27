
import 'package:flutter/material.dart';

class Layout extends StatefulWidget{
  const Layout({super.key});

  String get title => 'Layout';

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      fontSize: 20,
      color: Colors.blue
    );
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.red[100],
        border: Border.all(color: Colors.black, width: 2),
      ),

      child: 
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.star,
                    color: Colors.amber
                  ),
                ),
                Text(
                  'Star!!!!',

                  style: textStyle
                )
              ]
            ),

            Stack(
              children: [
                Text(
                  'Star!!!!',

                  style: textStyle
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Icon(
                    Icons.star,
                    color: Colors.red
                  ),
                )
              ]
            ),
            Row(
              children: [
                Icon(Icons.star,
                color: Colors.blue
                ),
                Text(
                  'Star!!!!',

                  style: textStyle
                )
              ]
            )
          ],
        )
      
    );
  }
}