import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalculatorState();
  }
}

class _CalculatorState extends State<MyApp> {
  double result = 0.0;
  double firstVal = 0.0;
  double secVal = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0B132B),
          title: Text(
            "Calculator",
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w900,
                fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "First No.",
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff6883BA),
                          )),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 5, color: Color(0xff6883BA)))),
                      onChanged: (value) {
                        setState(() {
                          firstVal = double.parse(value);
                        });
                      },
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        "|",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                          fontSize: 40,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Sec. No.",
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            width: 2,
                            color: Color(0xff6883BA),
                          )),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 5, color: Color(0xff6883BA)))),
                      onChanged: (value) {
                        setState(() {
                          secVal = double.parse(value);
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    margin: EdgeInsets.all(8),
                    child: RaisedButton(
                      color: Color(0xff6883BA),
                      child: Text(
                        "+",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          result = firstVal + secVal;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 50,
                    margin: EdgeInsets.all(8),
                    child: RaisedButton(
                      color: Color(0xff6883BA),
                      child: Text(
                        "-",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          result = firstVal - secVal;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 50,
                    margin: EdgeInsets.all(16),
                    child: RaisedButton(
                      color: Color(0xff6883BA),
                      child: Text(
                        "×",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          result = firstVal * secVal;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 50,
                    margin: EdgeInsets.all(8),
                    child: RaisedButton(
                      color: Color(0xff6883BA),
                      child: Text(
                        "÷",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          result = firstVal / secVal;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Text(
                "Result: $result",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
