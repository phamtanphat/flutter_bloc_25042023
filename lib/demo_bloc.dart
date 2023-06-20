import 'package:flutter/material.dart';

class DemoBlocPage extends StatefulWidget {
  const DemoBlocPage({Key? key}) : super(key: key);

  @override
  State<DemoBlocPage> createState() => _DemoBlocPageState();
}

class _DemoBlocPageState extends State<DemoBlocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo bloc"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Count : 0"),
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
      ),
    );
  }
}
