import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
             Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text("History",
                 style: GoogleFonts.albertSans(textStyle: const 
                 TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),),
                      
                        Image.asset('assets/logo-removebg-preview.png',width: 80,height: 80,)
                      
                    ],
                  ),
          ],
        ),
      )
      ,
    );
  }
}