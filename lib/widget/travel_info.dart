import 'package:custom_ui2/model/travel.dart';
import 'package:flutter/material.dart';

class TravelInfo extends StatefulWidget {
 final travelList=Travel.generateTravelBlog();

  @override
  State<TravelInfo> createState() => _TravelInfoState();
}

class _TravelInfoState extends State<TravelInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: widget.travelList.length,
          itemBuilder: (context,index){
        var travel=widget.travelList[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(

                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(travel.img),
                        fit: BoxFit.cover

                      ),

                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 40,

                child: Text(travel.name,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.yellowAccent
                ),)
            ),
            Positioned(
                bottom: 50,
                left: 40,
                child: Text(travel.address,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.yellowAccent
            ),)
            ),
            Positioned(
              bottom: -1,
                right: 20,
                height: 45,
                width: 45,
                child: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(50)
              ),
            child: Icon(Icons.forward,color: Colors.white,),
            )
            )
          ],
        );
      })
    );
  }
}
