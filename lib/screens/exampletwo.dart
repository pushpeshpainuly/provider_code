import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:providerstatemanagement/provider/exampleoneprovider.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Example 2'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<ExampleOneProvider>(
              builder: (context, value, child) {
                return Slider(
                  min: 0,
                  max: 1,
                  value: value.value,
                  onChanged: (val) {
                    value.setValue(val);
                  },
                );
              },
            ),
            Consumer<ExampleOneProvider>(builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.amberAccent.withOpacity(value.value)),
                      child: Center(
                        child: Text('Container 1'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 64, 121)
                              .withOpacity(value.value)),
                      child: Center(
                        child: Text('ontainer 2'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 64, 255, 115)
                              .withOpacity(value.value)),
                      child: Center(
                        child: Text('Conmtainer 3'),
                      ),
                    ),
                  ),
                ],
              );
            })
          ],
        ));
  }
}
