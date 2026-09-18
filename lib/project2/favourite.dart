import 'package:flutter/material.dart';

class favourite extends StatefulWidget {
  List <Map<String,dynamic>> watchlist;
   favourite({super.key, required this.watchlist,});

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text('My Watchlist',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text('Edit',style: TextStyle(color: Colors.red,fontSize: 19),),
        )],
      ),

body:
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: Expanded(
              child:
              widget.watchlist.isEmpty? Image.asset( 'assets/project2/emptylist.png',height: height*100,):
              ListView.builder(
                itemCount: widget.watchlist.length,
                itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    spacing: width*0.04,
                     children: [
                      Container(
                        height: height*0.10,
                        width: width*0.15,
                     //   color: Colors.red,
                        child: Image.asset(widget.watchlist[index]['profileimage']),
                      ),
                     Column(
                       spacing: 11,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: [
                             Container(
                    //           color: Colors.red,
                               width: width*0.63,
                               child: Column(
                                 spacing: 3,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                     Text(widget.watchlist[index]['mname'],style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                     GestureDetector(
                                         onTap: (){
                                           setState(() {
                                             widget.watchlist.removeAt(index);
                                           });
                                         },
                                         child: Icon(Icons.close,color: Colors.white,size: 17,))
                                   ],),
                                   Row(
                                     spacing: 4,
                                     children: [
                                       Text(widget.watchlist[index]['releasedate'],style: TextStyle(color: Colors.grey,fontSize: 12),),
                                       Icon(Icons.circle,size: 5,color: Colors.grey,),

                                       Text(widget.watchlist[index]['duration'],style: TextStyle(color: Colors.grey,fontSize: 12),),
                                       Icon(Icons.circle,size: 5,color: Colors.grey,),

                                       Text(widget.watchlist[index]['type'],style: TextStyle(color: Colors.grey,fontSize: 12),),
                                     ],
                                   ),
                                 ],
                               ),
                             ),
                         //    Spacer(),

                           ],
                         ),

                         Row(
                           spacing: 3,
                           children: [
                           Icon(Icons.star,color: Colors.orange,size: 15,),
                           Text(widget.watchlist[index]['rating'],style: TextStyle(color: Colors.orange),),

                         ],)
                       ],
                     )
                    ],
                  ),
                );

          },
          )),
        )
    );
  }
}
