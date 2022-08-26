import 'package:custom_ui2/model/travel_bottom_part.dart';
import 'package:flutter/material.dart';

class TravelBottomInfo extends StatefulWidget {

  final travelBottomList=TravelBottom.travelBottomObj();

  @override
  State<TravelBottomInfo> createState() => _TravelBottomInfoState();
}

class _TravelBottomInfoState extends State<TravelBottomInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView.builder(itemBuilder: (context,index){

        return ListView.builder(
            itemCount: widget.travelBottomList.length,
            itemBuilder: (context,index){
              var travelBottom=widget.travelBottomList[index];
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(

                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(travelBottom.img),
                              fit: BoxFit.cover

                          ),

                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 100,
                      left: 40,

                      child: Text(travelBottom.name,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.yellowAccent
                      ),)
                  ),
                ],
              );
            });
      }),

    );
  }
}
