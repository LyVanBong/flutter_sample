import 'package:flutter/material.dart';

import 'actions_timeer.dart';
import 'background.dart';
import 'timer_text.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Timer'),
      ),
      body: Stack(
        children: [
          const Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 100),
                child: Center(child: TimerText()),
              ),
              ActionsTimer(),
            ],
          ),
        ],
      ),
    );
  }
}
