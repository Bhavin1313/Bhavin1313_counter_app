import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:counter_app_provider/Provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .dectement();
                },
                child: Icon(
                  Icons.exposure_minus_1,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .dectement2();
                },
                child: Icon(
                  Icons.exposure_minus_2,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .dectement3();
                },
                child: Text("-3"),
              ),
              FloatingActionButton(
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .dectement4();
                },
                child: Text("-4"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .division2();
                },
                child: Text("/2"),
              ),
              FloatingActionButton(
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .division3();
                },
                child: Text("/3"),
              ),
              FloatingActionButton(
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .division4();
                },
                child: Text("/4"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .inctement();
                },
                child: Icon(
                  Icons.plus_one,
                ),
              ),
              FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .inctement2();
                },
                child: Icon(
                  Icons.exposure_plus_2,
                ),
              ),
              FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .inctement3();
                },
                child: Text("+3"),
              ),
              FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .inctement4();
                },
                child: Text("+4"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .multiplication2();
                },
                child: Text("*2"),
              ),
              FloatingActionButton(
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .multiplication3();
                },
                child: Text("*3"),
              ),
              FloatingActionButton(
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .multiplication4();
                },
                child: Text("*4"),
              ),
            ],
          ),
        ],
      ),
      appBar: AppBar(
        title: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            RotateAnimatedText("Counter App"),
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
            "${Provider.of<CounterProvider>(context, listen: true).myCounter.count}"),
      ),
    );
  }
}
