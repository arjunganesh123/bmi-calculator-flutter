import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  Resultpage({this.bmiresult,this.bmitext,this.interpretation});
  final String bmiresult;
  final String bmitext;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI RESULTS',style: TextStyle(fontSize: 40,color: Colors.white),)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              color: Color(0xFF1D1E33),
              child: Column(
                children: [
                  SizedBox(height: 80,),
                  Text(bmitext,style: TextStyle(fontSize: 30,color: Colors.green),),//bmm.condition()
                  SizedBox(height: 80,),
                  Text(bmiresult ,style: TextStyle(fontSize: 100,color: Colors.white),),//m
                  SizedBox(height: 80,),
                  Text(interpretation,style: TextStyle(fontSize: 30,color: Colors.white70),),//bmm.todo()
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            color: Colors.red,
            child: Center(
              child: GestureDetector(
                  onTap: (){
                      Navigator.pop(context);
                  },
                  child: Text('Re-Calculate',style: TextStyle(fontSize: 25,color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
