import 'package:custom_ui2/widget/travel_bottom_info.dart';
import 'package:custom_ui2/widget/travel_info.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu,color: Colors.black,size: 30,),
          )
        ],
      ),
      body: Container(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              padding: const EdgeInsets.all(8.0),
              child: Text("Travel Blogs",style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold
              ),),
            ),
            Expanded(
              flex: 2,
              child: TravelInfo(

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                    Text("Most Popular",style: TextStyle(
                        fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                    ),
                    Text("View All",style: TextStyle(
                        fontWeight: FontWeight.bold,
                      fontSize: 20
                    )),


                  ],



              ),
            ),


            Expanded(
              flex: 2,
              child: TravelBottomInfo(

              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Expanded(
            //       flex: 2,
            //       child: TravelInfo()
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(

            //   ),
            // ),
            // Expanded(
            //     flex: 1,
            //     child: Placeholder()
            // ),
          ],
        ),
      ),
      
    );
  }
}
