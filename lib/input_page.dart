import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../lib/icon_content.dart';
import '../../lib/reusable_card.dart';
import '../../lib/result_page.dart';
import '../components/bottom_button.dart';
import '../../lib/round_iconbutton.dart';

import 'package:untitled2/Constants.dart';

enum Gendertype {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 15;

  Color malecardcolour = kinactivecardcolour;
  Color femalecardcolour = kinactivecardcolour;
  void updateColour(Gendertype selectedGender) {
    if (selectedGender == Gendertype.male) {
      if (malecardcolour == kinactivecardcolour) {
        malecardcolour = Kcolourcode;
        femalecardcolour = kinactivecardcolour;
      } else {
        malecardcolour = kinactivecardcolour;
      }
    }
    if (selectedGender == Gendertype.female) {
      if (femalecardcolour == kinactivecardcolour) {
        femalecardcolour = Kcolourcode;
        malecardcolour = kinactivecardcolour;
      } else {
        femalecardcolour = kinactivecardcolour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gendertype.male);
                      });
                    },
                    child: ReusableCard(
                      colour: malecardcolour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gendertype.female);
                      });
                    },
                    child: ReusableCard(
                        colour: femalecardcolour,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'Female',
                        )),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: Kcolourcode,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Height',
                      style: KlabeltextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: Knumberstyle,
                        ),
                        Text(
                          'cm',
                          style: KlabeltextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 28.0),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.toInt();
                            });
                          }),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Kcolourcode,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: KlabeltextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: Knumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Kcolourcode,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: KlabeltextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: Knumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                            SizedBox(
                              width: 5.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
            BottomButton(
              buttonTitle: 'CALCULATE',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return resultpage();
                }));
              },
            )
          ],
        ));
  }
}
