import 'package:bmicalculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class result_page extends StatelessWidget {
  double bmi = 26.7;
  result_page(int height, int weight, int age, Gender selectedGender);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFF1D1E33),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      'OVERWIGHT',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.green),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text('$bmi',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                        )),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "You have higher than normal body weight.Try to excercise more.",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              child: Center(
                  child: Text('RE-CALCULATOR',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700))),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80,
            ),
          )
        ],
      ),
    );
  }
}
