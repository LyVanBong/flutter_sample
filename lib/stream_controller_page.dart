import 'package:flutter/material.dart';
import 'package:flutter_sample/counter_controller.dart';

class StreamControllerPage extends StatefulWidget {
  const StreamControllerPage({super.key});

  @override
  State<StreamControllerPage> createState() => _StreamControllerPageState();
}

class _StreamControllerPageState extends State<StreamControllerPage> {
  CounterController counterController = CounterController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    counterController.streamController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Stream'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
                stream: counterController.streamOut,
                builder: (context, snapshot) {
                  if (snapshot.hasData) return Text(snapshot.data.toString());
                  return const CircularProgressIndicator();
                }),
            IconButton(
              onPressed: () => {counterController.increase()},
              icon: const Icon(Icons.add),
              color: Colors.blue,
            ),
            IconButton(
              onPressed: () => {counterController.tru()},
              icon: const Icon(Icons.subdirectory_arrow_left_sharp),
              color: Colors.blue,
            )
          ],
        )));
  }
}
