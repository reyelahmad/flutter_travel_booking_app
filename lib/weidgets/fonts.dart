import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  String myText;
  double myfontsize;
  Color? myfontcolors;
  dynamic myfontWeidth;
  int mxline;

  MyText(
      {required this.myText,
        required this.mxline,
      required this.myfontsize,
      required this.myfontcolors,
      required this.myfontWeidth});

  @override
  Widget build(BuildContext context) {
    return Text(

      myText,
        maxLines: mxline,
        overflow: TextOverflow.ellipsis,
      style: GoogleFonts.robotoFlex(
        fontSize: myfontsize,
        fontWeight: myfontWeidth,
        color: myfontcolors,



      )
    );
  }
}
