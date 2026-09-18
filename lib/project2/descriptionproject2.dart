import 'package:flutter/material.dart';

class descriptionproject2 extends StatefulWidget {
  List<Map<String,dynamic>> descriptionlist=[];
  final int selectedindex;
  List<Map<String,dynamic>> watchlist;
  descriptionproject2({super.key, required this.descriptionlist,required this.watchlist, required this.selectedindex});

  @override
  State<descriptionproject2> createState() => _descriptionproject2State();
}

class _descriptionproject2State extends State<descriptionproject2> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start
        ,
        children: [
          Stack(
            children: [
              Image.asset(widget.descriptionlist[widget.selectedindex]['landscapeimage'],height: height*0.4,width: width,
              fit: BoxFit.cover,),
              Positioned.fill(
                child: Container(

                  decoration: BoxDecoration(gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors:[
                      Colors.transparent,
                      Colors.black54,
                      Colors.black87,

                    ])),

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(height:40 ,width: 40,
                      decoration: BoxDecoration(color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                      child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 20,),
                      ),
                    ),
                  Row(
                    spacing: 10,
                    children: [
                      Container(height:40 ,width: 40,
                        decoration: BoxDecoration(color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(Icons.ios_share_outlined,color: Colors.white,size: 20,),
                      ),
                    ],
                  )
                ],),
              ),
            ],
          ),
          SizedBox(height:height*0.015,),
          Expanded(
            child: Container(
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Text(widget.descriptionlist[widget.selectedindex]['mname'],style: TextStyle(color: Colors.white,fontSize: 26,
                          fontWeight: FontWeight.bold),),
                    SizedBox(height:height*0.02 ,),
                    Row(
                      spacing: 8,
                      children: [
                        Container(height: height*0.035,
                        width: width*0.12,
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade800,
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Center(
                            child: Text('IMOB',style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold ,fontSize: 13),),
                          ),
                        ),
                        Text(widget.descriptionlist[widget.selectedindex]['rating'],style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13,
                        ),),

                        Text('|',style: TextStyle(color: Colors.grey.shade800,fontSize: 20,fontWeight: FontWeight.bold,
                        ),),

                        Text(widget.descriptionlist[widget.selectedindex]['releasedate'],style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13,
                        ),),


                        Text('|',style: TextStyle(color: Colors.grey.shade800,fontSize: 20,fontWeight: FontWeight.bold,
                        ),),

                        Text(widget.descriptionlist[widget.selectedindex]['duration'],style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13,
                        ),),
                        Text('|',style: TextStyle(color: Colors.grey.shade800,fontSize: 20,fontWeight: FontWeight.bold,
                        ),),

                        Text(widget.descriptionlist[widget.selectedindex]['type'],style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13,
                        ),),
                      ],
                    ),
                    SizedBox(height:height*0.02 ,),
                    Text(widget.descriptionlist[widget.selectedindex]['description'],style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13,
                    ),),

                    SizedBox(height:height*0.025 ,),
                    Text('Cast',style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17,
                    ),),
                    SizedBox(height:height*0.025 ,),

                    //////////////////////////////////////////////// list viewcast
                    SizedBox(
                      height: height*0.14,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.descriptionlist[widget.selectedindex]['actors'].length,
                        itemBuilder: (context, actorIndex) {
                          return Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              children: [CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.grey.shade900,
                                  backgroundImage: AssetImage(

                                    widget.descriptionlist[widget.selectedindex]['actors'][actorIndex]['image'],
                                  ),
                                ),
                                SizedBox(height:height*0.01 ,),
                                SizedBox(
                                  width: width*0.18,
                                  child: Text(
                                    widget.descriptionlist[widget.selectedindex]['actors'][actorIndex]['name'],
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    ///////////////////////////////////////////////////////////////// listview end
                    SizedBox(height:height*0.02 ,),
                    GestureDetector(
                      onTap: (){

                          if (!widget.watchlist.contains(widget.descriptionlist[0])) {
                            widget.watchlist.add(widget.descriptionlist[0]);

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:  Text("Movie added to your Watchlist 🎬"),
                                backgroundColor: Colors.red,
                                duration: Duration(seconds: 2),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            );
                        };
                        child: Container(
                        height: height * 0.07,
                        decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Icon(Icons.add, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                        'Add to Watchlist',
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        ),
                        ),
                        ],
                        ),
                        );
                      },
                      child: Container(
                        height: height*0.07,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add,color: Colors.white,),
                            Text('Add to Watchlist',style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,fontSize: 15),)
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}

