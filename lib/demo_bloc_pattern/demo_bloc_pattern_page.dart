import 'package:flutter/material.dart';
import 'package:flutter_bloc_25042023/demo_bloc_pattern/count_bloc.dart';
import 'package:provider/provider.dart';

import 'count_event.dart';

class DemoBlocPatternPage extends StatefulWidget {
  const DemoBlocPatternPage({Key? key}) : super(key: key);

  @override
  State<DemoBlocPatternPage> createState() => _DemoBlocPatternPageState();
}

class _DemoBlocPatternPageState extends State<DemoBlocPatternPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo bloc"),
      ),
      body: Provider<CountBloc>(
        create: (context) => CountBloc(),
        child: Consumer<CountBloc>(
          builder: (context, bloc, child) {
            return Container(
              constraints: BoxConstraints.expand(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  StreamBuilder<int>(
                      stream: bloc.getCountStream(),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Text(snapshot.error.toString());
                        }
                        var total = snapshot.data;
                        if (total == null) {
                          return Text("Data is null");
                        }
                        return Text("Count: $total");
                      }
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: () {
                          bloc.addEvent(IncreaseEvent(value: 1));
                      }, child: Text("Increase")),
                      ElevatedButton(onPressed: () {

                      }, child: Text("Decrease")),
                      ElevatedButton(onPressed: () {

                      }, child: Text("Reset")),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
