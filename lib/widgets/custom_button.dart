
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onTap, required this.titleButton});
  final String titleButton;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),

        height: 65,
        width: double.infinity,
        child: Center(
            child: Text(titleButton,style: TextStyle(
              color: Colors.white,fontSize: 17,
              fontWeight: FontWeight.bold,
            ),),),
      ),
    );
  }
}
