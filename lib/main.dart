import 'package:flutter/material.dart';
import 'src/buttons.dart';

void main() => runApp(MaterialApp(
      home: homePage(),
      theme: ThemeData(primaryColor: Colors.redAccent),
    ));

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Calculator();
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Buttons calculatorButtons = new Buttons();

  String _currentOperation = "3+28/22";

  String _result = "100";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(

            children: <Widget>[


              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(_currentOperation , style: TextStyle(color: Colors.blueGrey,fontSize: 20.0),),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children :<Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32.0,right: 32.0),
                    child: Text(_result,style: TextStyle(color: Colors.black,fontSize: 60.0,fontWeight: FontWeight.bold)),
                  ),
                ]
              ),
              Divider(height: 15.0,indent: 4.0,),
              Row( /// first row
                mainAxisAlignment:  MainAxisAlignment.center,
                children: calculatorButtons.firstRow.map(_buildButtons).toList(),
              ),

              Row(
                mainAxisAlignment:  MainAxisAlignment.center,
              children: calculatorButtons.secondRow.map(_buildButtons).toList(),
              ),


              Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: calculatorButtons.thirdRow.map(_buildButtons).toList(),
              ),


              Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: calculatorButtons.forthRow.map(_buildButtons).toList(),
              ),

              Row(
                mainAxisAlignment:  MainAxisAlignment.start,
                children : <Widget>[
                  _buildButtons("0"),
                  _buildButtons('.'),
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.only(right: 28.0),
                     child: SizedBox(
                      height: 50.0,
                       width: 120.0,
                       child: RaisedButton(
                         padding: EdgeInsets.only(left: 60.0),
                         child: Text("=",style: TextStyle(fontSize: 30.0),),
                          color: Colors.amber,
                          textColor: Colors.white,
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0

                         )), onPressed: () {},
                       ),
                     ),
                   ),
                 )
                ],
              ),


            ],
          ),
        )
    );
  }

  Widget _buildButtons(String button_text){
    return Expanded(
      child: SizedBox(
        width: 120.0,
        height: 80.0,
        child: FlatButton(
          color:  Colors.white,
          textColor: calculatorButtons.arithmetic.contains(button_text) && button_text!= '='? Colors.pinkAccent :Colors.black,
          textTheme: ButtonTextTheme.normal,
          shape:CircleBorder(side: BorderSide(color: Colors.white))
          ,child: Text(button_text,style:

          TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),),
            onPressed: (){
                  print(button_text);
            },
             ),
      ),
    );
  }

}





