import 'package:flutter/material.dart';

class DisplayLogo extends StatelessWidget {
  final String type;
  const DisplayLogo({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return type == 'L'
        ? const Text("EduPulse",style: TextStyle(color: Colors.white,fontSize: 70,fontWeight: FontWeight.bold),)
        : type == 'S'
            ? const Text("\nEduPulse",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
            : const Text("\nEdu\nPulse",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),);
  }
}
