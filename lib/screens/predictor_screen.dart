import 'package:flutter/material.dart';
import 'package:project3/lib.dart';

class PredictorScreen extends StatefulWidget {
  const PredictorScreen({super.key});

  @override
  State<PredictorScreen> createState() => _PredictorScreenState();
}

class _PredictorScreenState extends State<PredictorScreen> {
  Prediction newPrediction = Prediction();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue, Colors.red])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                  child: Text("Call me... Maybe?",
                      style: TextStyle(fontFamily: 'PlexItalic', fontSize: 40)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 0.0),
                  child: GestureDetector(
                    child: Text("Ask a question...tap for answer.",
                        style: Theme.of(context).textTheme.headline5),
                    onTap: () {
                      newPrediction.randomAnswer();
                      setState(() {
                        newPrediction = newPrediction;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 0.0),
                  child: Text(newPrediction.currentAnswer!,
                      style: Theme.of(context).textTheme.headline4),
                )
              ],
            ),
          ),
        ));
  }
}
