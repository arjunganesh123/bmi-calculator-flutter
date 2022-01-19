import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'CContainer.dart';
import 'icon_content.dart';
import 'result_page.dart';
import 'bmicalculator.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int malecardcolour=0xFF0A0E21;
  int femalecardcolour=0xFF0A0E21;
  int height=180;
  int weight=60;
  int age=20;
  void updatecolor(int value){
    if(value==1){
      malecardcolour=0xFF1D1E33;
      femalecardcolour=0xFF0A0E21;
    }
    else if(value==2){
      femalecardcolour=0xFF1D1E33;
      malecardcolour=0xFF0A0E21;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR'),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updatecolor(1);
                      });
                    },
                    child: CContainer(
                      colour: malecardcolour,
                      cardChild: icon_content(text: 'Male',font: FontAwesomeIcons.mars,),
                    ),
                  ),
                ),Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updatecolor(2);
                      });
                    },
                    child: CContainer(colour: femalecardcolour,
                      cardChild:icon_content(text: 'Female',font: FontAwesomeIcons.venus),),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CContainer(colour: 0xFF1D1E33,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Height',style: TextStyle(fontSize: 15,color: Colors.white),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(height.toString(),style: TextStyle(fontSize: 50,color: Colors.white),),
                  Text('cm',style: TextStyle(fontSize: 10,color: Colors.white),),
                ],
              ),
              Slider(value: height.toDouble(),
                min: 120,
                max: 220,
                activeColor: Colors.red,
                inactiveColor: Colors.white,
                onChanged: (double value){
                     setState(() {
                       height=value.round();
                     });
                },
              ),
            ],  
            ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CContainer(colour: 0xFF1D1E33,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Weight',style: TextStyle(fontSize: 25,color: Colors.white),),
                    Text(weight.toString(),style: TextStyle(fontSize: 45,color: Colors.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              weight++;
                            });
                          },
                          backgroundColor: Color(0xFF0A0E21),
                            child: Icon(
                              Icons.add,size: 20,color: Colors.white,
                            ),
                        ),
                        SizedBox(width: 20,),
                        FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              if(weight>0){
                              weight--;}
                            });
                          },
                            backgroundColor: Color(0xFF0A0E21),
                            child: Icon(FontAwesomeIcons.minus,size: 20,color: Colors.white,
                            ),
                        ),
                      ],
                    ),
                  ],
                  ),
                  ),
                ),
                Expanded(
                  child: CContainer(colour: 0xFF1D1E33,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Age',style: TextStyle(fontSize: 25,color: Colors.white),),
                        Text(age.toString(),style: TextStyle(fontSize: 45,color: Colors.white),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: Color(0xFF0A0E21),
                              child: Icon(
                                Icons.add,size: 20,color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 20,),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  if(age>0){
                                    age--;
                                  }
                                });
                              },
                                backgroundColor: Color(0xFF0A0E21),
                                child: Icon(FontAwesomeIcons.minus,size: 20,color: Colors.white,
                                ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                ),
              ],
            ),
          ),
          Container(
            height: 80,
            color: Colors.red,
            child: Center(
              child: GestureDetector(
                onTap: (){
                  BmiCalculator bmi=BmiCalculator(weight: weight,height: height);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Resultpage(
                    bmiresult: bmi.calculatebmi(),
                    bmitext:bmi.condition() ,
                    interpretation: bmi.todo(),
                  )));
                },
                  child: Text('Calculate',style: TextStyle(fontSize: 25,color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}

