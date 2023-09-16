
import "package:flutter/material.dart";


    class TestState extends StatefulWidget {
      const TestState({super.key});

      @override
      State<TestState> createState() => _TestStateState();
    }

    class _TestStateState extends State<TestState> {
      int num = 0;
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Counter App'),
            centerTitle: true,
          ),
          body:Center(
              child: Text('Number: $num')
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                num++;
              });
            },
          ),
        );
      }
    }
