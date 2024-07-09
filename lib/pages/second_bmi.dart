import 'package:flutter/material.dart';

class  second_bmi extends StatefulWidget {
 second_bmi({super.key,required this .height, required this.weight,});
  final String height;
final String weight;

  @override
  State<second_bmi> createState() => _second_bmiState();
}

class _second_bmiState extends State<second_bmi> {
  double  BMI=0;
  void getBmi(){
   double heightvalue=double.parse(widget.height);
   double weightvalue=double.parse(widget.weight);

   heightvalue=heightvalue/100;
   setState(() {
     BMI = weightvalue/(heightvalue * heightvalue);
   });
   }

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBmi();
  }
  
   

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          
          children: [
            Text(" Your BMI result is :"),
           
            Text(BMI.toStringAsFixed(2),style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25,
            color: (BMI > 18 && BMI < 30)? Colors.green: Colors.red),
            ) , 
            (BMI > 18 && BMI < 30)?Text("Your are healthy"):
            Text("Your are not healthy"),
               ],
        ), 
      ),

    );
  }
}

