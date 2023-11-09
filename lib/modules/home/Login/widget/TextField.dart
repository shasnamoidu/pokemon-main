import 'package:flutter/material.dart';

class BuildTextformField extends StatelessWidget {
  BuildTextformField({required this.icon,required this.text,super.key});
  Icon icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                        decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                            
                            borderSide: BorderSide(color: Colors.transparent),
                            
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                        
                          ),
                          prefixIcon: icon,
                          hintText: text,
                          
                          fillColor:Colors.white70,
                          filled: true,

                        ),
                      );
  }
}