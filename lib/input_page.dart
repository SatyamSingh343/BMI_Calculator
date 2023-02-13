
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}





class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body:Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child:ReusableCard(Colour: Color(0xFF1D1E33)),
              ),
              Expanded(child: ReusableCard(Colour: Color(0xFF1D1E33)),
              ),
            ],
          )),
          Expanded(child: ReusableCard(Colour: Color(0xFF1D1E33)),
          ),

    Expanded(child: Row(
    children: <Widget>[
    Expanded(child: ReusableCard(Colour: Color(0xFF1D1E33)),
    ),
    Expanded(child: ReusableCard(Colour: Colors.blue),
    ),
    ],
    )),

        ],
      )
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.Colour});
  Color Colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color:Colour,
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}
