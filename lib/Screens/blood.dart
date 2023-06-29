import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blood extends StatefulWidget {
  const Blood({super.key});

  @override
  State<Blood> createState() => _BloodState();
}

class _BloodState extends State<Blood> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(left:10,top: 10, right:10, bottom:10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text("Blood Donation Camp Booking",
                 style: GoogleFonts.albertSans(textStyle: const 
                 TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
                      
                        Image.asset('assets/logo-removebg-preview.png',width: 80,height: 80,)
                      
                    ],
                  ),
                  SizedBox(height: 30,),
                  Typeofambulance(),
                  SizedBox(height: 30,),
                  dateofbooking(),
                  SizedBox(height: 30,),
                  Dayofbooking(),
                  SizedBox(height: 30,),
                  Container(
                    child: 
                    Image.asset('assets/Blood-Donation-PNG-Picture.png',scale:27,),
                  ) 
                
                          ],
            ),
          ),
        ),
    
      ),
    );
  }
  Widget Typeofambulance() {
    return Container(
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Color.fromARGB(179, 208, 199, 199),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        enabled: null,
       // controller: _searchcontroller,
        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Color.fromARGB(179, 208, 199, 199),)),
          focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red,),
          borderRadius: BorderRadius.circular(50)),
            suffixIcon: IconButton(
              icon: Icon(Icons.close,color: Colors.red,),
             
              onPressed: () async {
                
              },
            ),
            // prefixIcon: Icon(
            //   Icons.emergency,
            //   color: Colors.red,
            //   size: 20,
            // ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            // border: InputBorder.none,
            hintText: 'Type of ambulance',
            hintStyle: TextStyle(color: Color.fromARGB(136, 229, 93, 93))),
            
      ),
    );
  }
  Widget Dayofbooking() {
    return Container(
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Color.fromARGB(179, 208, 199, 199),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        enabled: null,
       // controller: _searchcontroller,
        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Color.fromARGB(179, 208, 199, 199),)),
          focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red,),
          borderRadius: BorderRadius.circular(50)),
            suffixIcon: IconButton(
              icon: Icon(Icons.close,color: Colors.red,),
             
              onPressed: () async {
                
              },
            ),
            // prefixIcon: Icon(
            //   Icons.search,
            //   color: Colors.red,
            //   size: 20,
            // ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            // border: InputBorder.none,
            hintText: 'Days of booking',
            hintStyle: TextStyle(color: Color.fromARGB(136, 229, 93, 93))),
            
      ),
    );
  }
  Widget dateofbooking() {
    return Container(
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Color.fromARGB(179, 208, 199, 199),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        enabled: null,
       // controller: _searchcontroller,
        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Color.fromARGB(179, 208, 199, 199),)),
          focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red,),
          borderRadius: BorderRadius.circular(50)),
            suffixIcon: IconButton(
              icon: Icon(Icons.close,color: Colors.red,),
             
              onPressed: () async {
                
              },
            ),
            // prefixIcon: Icon(
            //   Icons.search,
            //   color: Colors.red,
            //   size: 20,
            // ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            // border: InputBorder.none,
            hintText: 'Date of booking',
            hintStyle: TextStyle(color: Color.fromARGB(136, 229, 93, 93))),
            
      ),
    );
  }
}