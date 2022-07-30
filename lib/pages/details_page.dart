import 'package:flutter/material.dart';
import 'package:travel_booking/model/data_and_info.dart';
class Details extends StatelessWidget {
  const Details({Key? key,this.model}) : super(key: key);

  final DataInfo? model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        
        Text("${model!.description}")
      ],),),
    );
  }
}
