import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class BottomDiv extends StatelessWidget {
  const BottomDiv({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, bottom: 15),
            child: Row(
              children: <Widget>[
                Text(
                  "My Goals",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          HorizontalProgressIndicator(
            type: "Running",
            minuits: "30",
            color: Colors.purple,
            currsteps: 2,
          ),
          HorizontalProgressIndicator(
            type: "Pilates",
            minuits: "60",
            color: Colors.pink,
            currsteps: 5,
          ),
          HorizontalProgressIndicator(
            type: "Yoga",
            minuits: "90",
            color: Colors.blue[900],
            currsteps: 8,
          ),
        ],
      ),
    );
  }
}

class HorizontalProgressIndicator extends StatelessWidget {
  HorizontalProgressIndicator(
      {this.type, this.minuits, this.color, this.currsteps});
  String type, minuits;
  Color color;
  int currsteps;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10, left: 22, right: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(type,
                  style: TextStyle(
                    fontSize: 17,
                    color: color,
                  )),
              Text(
                minuits + "/180",
                style: TextStyle(
                  fontSize: 17,
                  color: color,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 22, right: 22, top: 10, bottom: 23),
          child: StepProgressIndicator(
            totalSteps: 10,
            currentStep: currsteps,
            size: 10,
            selectedColor: color,
            unselectedColor: Colors.grey[200],
            roundedEdges: Radius.circular(10),
          ),
        )
      ],
    );
  }
}
