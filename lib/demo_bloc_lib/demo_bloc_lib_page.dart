import 'package:flutter/material.dart';
class DemoBlocLibPage extends StatefulWidget {

  @override
  State<DemoBlocLibPage> createState() => _DemoBlocLibPageState();
}

class _DemoBlocLibPageState extends State<DemoBlocLibPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo bloc"),
      ),
      body:  Container(
        color: Colors.black12,
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Count: 0", style: TextStyle(color: Colors.red)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {

                }, child: Text("Increase")),
                ElevatedButton(onPressed: () {

                }, child: Text("Decrease")),
                ElevatedButton(onPressed: () {

                }, child: Text("Reset")),
              ],
            )
          ],
        ),
      )
    );
  }
}
