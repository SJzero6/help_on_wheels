import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Booking_list extends StatefulWidget {
  const Booking_list({super.key});

  @override
  State<Booking_list> createState() => _Booking_listState();
}

class _Booking_listState extends State<Booking_list> {

  
    
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10)
          ,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Book Ambulance",style: GoogleFonts.albertSans(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
              Column(
                children: [
                  SizedBox(height: 10,),
                  Location(),
                  SizedBox(height: 10,),
                  Destination(),
                  SizedBox(height: 10,),
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 10),
                    // color: Colors.black,
                    height: MediaQuery.of(context).size.height*1/1.6
                  ),
                  SizedBox(height: 10,),
                   Container(width: MediaQuery.of(context).size.width,
                    height: 50,
                      margin: const EdgeInsets.only(left: 3,right: 3),
                      child: ElevatedButton(style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                      ),
                        onPressed: (){}, 
                        child: Text('Choose Ambulance',
                        style:GoogleFonts.albertSans(textStyle: 
                        const TextStyle(fontSize:20 ),
                        fontWeight: FontWeight.bold) ,))),
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
  Widget Location() {
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
            prefixIcon: Icon(
              Icons.location_on,
              color: Colors.red,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            // border: InputBorder.none,
            hintText: 'Current location',
            hintStyle: TextStyle(color: Color.fromARGB(136, 229, 93, 93))),
            
      ),
    );
  }
  Widget Destination() {
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
            prefixIcon: Icon(
              Icons.search,
              color: Colors.red,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            // border: InputBorder.none,
            hintText: 'Destination',
            hintStyle: TextStyle(color: Color.fromARGB(136, 229, 93, 93))),
            
      ),
    );
  }

}