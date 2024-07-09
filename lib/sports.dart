import 'package:flutter/material.dart';
import 'package:ecp/footwear.dart';
import 'package:ecp/activewear.dart';
import 'package:ecp/sprotsequi.dart';
import 'package:ecp/health.dart';



void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Sports(),
      )
  );
}

class Sports extends StatefulWidget {

  @override
  State<Sports> createState() =>_SportsState();
}

class _SportsState extends State<Sports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10,top: 28),
        child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
                height: 100,
                child: Row(
                  children: [
                    Text('Sports Hub',style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    ),
                    Icon(

                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue,),
                    Padding(
                        padding: const EdgeInsets.only(left: 11.0),
                        child:
                        Row(
                          children: [
                            Image.asset('assets/images/sporthub1.png',
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 50.0),
              Padding(padding: const EdgeInsets.only(right: 10),
                child:SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  Footwear()));
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45,
                                  backgroundImage: AssetImage(
                                      'assets/images/footwear1.jpg'),
                                ),
                                Text('Footwear\n',
                                  style: TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.bold ),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(width: 25.0,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  Activewear()));
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45,
                                  backgroundImage: AssetImage(
                                      'assets/images/activewear.jpg'),
                                ),
                                Text('ActiveWear\n',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(width: 25.0,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  Sport()));
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45,
                                  backgroundImage: AssetImage(
                                      'assets/images/sport equipments.jpg'),
                                ),
                                Text('     Sport\nEquipments',
                                  style: TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.bold ),
                                ),
                              ]
                          ),
                        ),
                      ] // backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Padding(padding: const EdgeInsets.only(right: 240),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>  Health()));
                          },
                          child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 45,
                                  backgroundImage: AssetImage(
                                      'assets/images/healthcare.jpg'),
                                ),
                                Text('  Nutrition & \n Healthacare',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ]
                          ),
                        ),
                      ] // backgroundColor: Colors.transparent,
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}