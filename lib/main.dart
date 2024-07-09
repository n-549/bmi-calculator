import 'package:bmi/pages/bmi.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(bmipages());

}
class bmipages extends StatelessWidget {
const bmipages({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    home: BMIPage(),
    );   
  }
}
