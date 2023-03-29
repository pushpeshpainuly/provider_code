import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NotifyListnerScreen extends StatelessWidget {
  NotifyListnerScreen({super.key});
  ValueNotifier<int> _count = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Staless widget used as a statefull widget'),
        ),
        body: Center(
          child: ValueListenableBuilder(
            valueListenable: _count,
            builder: (context, value, child) {
              return Text(
                _count.value.toString(),
                style: TextStyle(fontSize: 20),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _count.value++;
            print(_count.value.toString());
          },
          child: Icon(Icons.add),
        ));
  }
}
