import 'package:flutter/material.dart';

class TopDiv extends StatelessWidget {
  const TopDiv({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 30.0,
          )
        ],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [Colors.pink, Colors.purple],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            trailing: Icon(Icons.settings, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 27, 20),
                child: CircleAvatar(
                  backgroundColor: Colors.purple[400],
                  radius: 55,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/originals/17/1e/e7/171ee7a7a6a237869827a5b93aec2920.jpg"),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Mia Smith",
                      style: TextStyle(color: Colors.white, fontSize: 27),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.place,
                        color: Colors.white70,
                        size: 25,
                      ),
                      Text(
                        "Houston, TX",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Counter(
                  value: "800",
                  text: "total distance, mi",
                ),
                Counter(
                  value: "105K",
                  text: "total steps",
                ),
                Counter(
                  value: "3.8K",
                  text: "total calories, kcal",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Counter extends StatelessWidget {
  Counter({this.value, this.text});
  String value, text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          value,
          style: TextStyle(
              color: Colors.white, fontSize: 27, fontWeight: FontWeight.w500),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white70, fontSize: 12),
        )
      ],
    );
  }
}
