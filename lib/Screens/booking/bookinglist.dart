import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingList extends StatefulWidget {
  const BookingList({super.key});

  @override
  State<BookingList> createState() => _BookingListState();
}

class _BookingListState extends State<BookingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text("My Bookings",
                 style: GoogleFonts.albertSans(textStyle: const 
                 TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),),
                      
                        Image.asset('assets/logo-removebg-preview.png',width: 80,height: 80,)
                      
                    ],
                  ),
                  Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: 
                  Center(
                    child: Text('10 min Away from\nthe location ',style: GoogleFonts.albertSans(textStyle: 
                      TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white))),
                  ),
                  color: Colors.red,
                  elevation: 10,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        
                )
              ),
          ],
        )
        ,
      ),
    );
  }
}