import 'package:flutter/material.dart';

void main(){
  runApp(const ContainerColorApp());
}
class ContainerColorApp extends StatefulWidget{
  const ContainerColorApp({super.key});
  
  @override
  State createState()=>_ContainerColorApp();
}
class _ContainerColorApp extends State{
  bool colorChange=true;
  @override
 Widget build(BuildContext context){
  return MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: const Text("Container Color App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child: 
        Container(
           width: 250,
           height: 250,
           color: (colorChange)?Colors.amber:Colors.green,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(colorChange){
            colorChange=false;
          }else{
            colorChange=true;
          }
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    ),
  );
 }
}