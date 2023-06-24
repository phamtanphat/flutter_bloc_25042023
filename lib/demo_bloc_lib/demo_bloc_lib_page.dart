import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_25042023/demo_bloc_lib/count_event_lib.dart';
import 'package:flutter_bloc_25042023/demo_bloc_lib/count_state_lib.dart';
import 'package:flutter_bloc_25042023/demo_bloc_lib/counte_bloc_lib.dart';
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
      body: BlocProvider(
        create: (context) => CountBlocLib(0),
        child: DemoBlocLibWidget()
      )
    );
  }
}

class DemoBlocLibWidget extends StatelessWidget {

  CountBlocLib? bloc = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      constraints: BoxConstraints.expand(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CountBlocLib, CountState>(
              builder: (context, state) {
                return Text("Count: ${state.value}", style: TextStyle(color: Colors.red));
              }
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {
                bloc = context.read<CountBlocLib>();
                bloc?.add(IncreaseEventLib(value: 1));
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
  }
}

