import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class MiddleDIv extends StatelessWidget {
  const MiddleDIv({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                Text(
                  "Total activity",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            padding: EdgeInsets.only(
              top: 8.0,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  "Steps",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.purple[700],
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  "Calories",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Text("Distance",
                    style: TextStyle(
                      fontSize: 17,
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                VerticleProgressIndicator(
                  currentsteps: 1500,
                  day: 'Sun',
                ),
                VerticleProgressIndicator(
                  currentsteps: 2300,
                  day: 'Mon',
                ),
                VerticleProgressIndicator(
                  currentsteps: 1800,
                  day: 'Tue',
                ),
                VerticleProgressIndicator(
                  currentsteps: 600,
                  day: 'Wed',
                ),
                VerticleProgressIndicator(
                  currentsteps: 2300,
                  day: 'Thu',
                  active: true,
                ),
                VerticleProgressIndicator(
                  currentsteps: 1500,
                  day: 'Fri',
                ),
                VerticleProgressIndicator(
                  currentsteps: 1200,
                  day: 'Sat',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class VerticleProgressIndicator extends StatelessWidget {
  VerticleProgressIndicator({this.currentsteps, this.day, this.active = false});
  int currentsteps;
  String day;
  bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          active
              ? Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: 60,
                  height: 20,
                  child: DecoratedBox(
                    child: Center(
                      child: Text(
                        currentsteps.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          colors: [Colors.pink, Colors.purple],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                  ),
                )
              : Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: 50,
                  height: 20,
                ),
          StepProgressIndicator(
            direction: Axis.vertical,
            selectedColor: active ? Colors.purple : Colors.pink,
            unselectedColor: Colors.grey[200],
            totalSteps: 3000,
            currentStep: currentsteps,
            fallbackLength: 130,
            size: 12,
            padding: 0,
            roundedEdges: Radius.circular(10),
            progressDirection: TextDirection.rtl,
          ),
          SizedBox(height: 5),
          Text(
            day,
            style: TextStyle(fontSize: 10, color: Colors.grey[700]),
          )
        ],
      ),
    );
  }
}
