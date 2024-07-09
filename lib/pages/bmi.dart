import 'package:bmi/pages/second_bmi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class BMIPage extends StatefulWidget {
  const BMIPage({super.key});

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  final TextEditingController heightcontroller = TextEditingController();
  final TextEditingController weightcontroller = TextEditingController();

  
    
  
  void button() {
    print(heightcontroller.text);
    print(weightcontroller.text);
  
   
    
   
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 230, 230),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BMI Calculator",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Color.fromARGB(255, 37, 127, 201)),),
            Container(
              height: 350,
              width:400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white,
              ),
              child: Column(
                children: [
             Row(
                    children: [
                  Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 45),
                        child: Text("height",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                      ),
                  Expanded(child: Padding(
                    padding: EdgeInsets.all(25),
                    child: TextField(
                      controller: heightcontroller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                        ),
                      ),
                  )),
                     
                       SizedBox(height: 20,)
                    ],
                  ),
                 Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text("weight",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15)),
                      ),
                       Expanded(child: Padding(
                    padding: EdgeInsets.all(25),
                    child: TextField(
                      controller: weightcontroller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                        ),
                      ),
                  )),
                    ],
                  ),
                  MaterialButton(onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder:((context)=> second_bmi(height:heightcontroller.text,weight:weightcontroller.text,))));
                  },
                  child:Text('Calculator BMI',style: TextStyle(color:Colors.blue ),) ,
                  )
                ]
              ),
              
            )
          ]
        )
      )
    );
  }
}
