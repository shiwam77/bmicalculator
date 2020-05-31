import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const activecardcolour = Color(0xFF1D1E33);
const inactivecardcolour = Color(0xFF111328);
enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolour = inactivecardcolour;
  Color femalecardcolour = inactivecardcolour;

  // ignore: non_constant_identifier_names
  void Updatecolor(Gender selectedGender) {
    if (selectedGender == Gender.Male) {
      if (malecardcolour == inactivecardcolour) {
        malecardcolour = activecardcolour;
      } else {
        malecardcolour = activecardcolour;
      }
      femalecardcolour = inactivecardcolour;
    }
    if (selectedGender == Gender.Female) {
      if (femalecardcolour == inactivecardcolour) {
        femalecardcolour = activecardcolour;
      } else {
        femalecardcolour = activecardcolour;
      }
      malecardcolour = inactivecardcolour;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Updatecolor(Gender.Male);
                        });
                      },
                      child: Resuablecard(
                        color: malecardcolour,
                        cardChild: ChildWidget(
                          lable: 'Male',
                          icons: Icons.flight,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Updatecolor(Gender.Female);
                        });
                      },
                      child: Resuablecard(
                        color: femalecardcolour,
                        cardChild: ChildWidget(
                          lable: 'Female',
                          icons: Icons.local_florist,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child:
                  GestureDetector(child: Resuablecard(color: activecardcolour)),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                        child: Resuablecard(color: activecardcolour)),
                  ),
                  Expanded(
                    child: GestureDetector(
                        child: Resuablecard(color: activecardcolour)),
                  )
                ],
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80,
            )
          ],
        ));
  }
}

class ChildWidget extends StatelessWidget {
  final String lable;
  final IconData icons;
  ChildWidget({this.lable, this.icons});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icons,
          size: 50,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          '$lable',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Resuablecard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  Resuablecard({this.color, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(15.0),
      child: cardChild,
    );
  }
}
