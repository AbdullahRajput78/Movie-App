import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/project2/descriptionproject2.dart';

class home extends StatefulWidget {
  List <Map<String,dynamic>> alldatac;
  List<Map<String,dynamic>> actionc;
  List<Map<String,dynamic>> comedyc;
  List<Map<String,dynamic>> dramac;
  List<Map<String,dynamic>> scific;
  List<Map<String,dynamic>> watchlist;
   home({super.key,
     required this.alldatac,
     required this.actionc,
     required this.comedyc,
     required this.dramac,
     required this.scific,
     required this.watchlist,


   });


  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin{
  late TabController tabController;
int tabindex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 5, vsync: this);
  }

  List <Map<String,dynamic>> desciptionlist=[];

  ////////////////////////////////////////////// for grid view
  int selectedindex=0;
  ////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
        var width=MediaQuery.of(context).size.width;
        var height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
     appBar:AppBar(
       backgroundColor: Colors.black,
       leadingWidth: 150,
       leading: Padding(
         padding: const EdgeInsets.only(left: 0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Cine", style: TextStyle(
                 color: Colors.red,
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),
             ),
             Text(
               "Verse",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),
             ),
           ],
         ),
       ),
       actions: [Padding(
         padding: const EdgeInsets.only(right: 22),
         child: Icon(Icons.add_alert_outlined,color: Colors.white,),
       )],
     ),
      ///////////////////////////////////////////////////// body row 1
      body: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25,top: 6),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                height: height*0.04,
                width: width*0.71,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    spacing: width*0.02,
                    children: [
                      Icon(Icons.search,color: Colors.grey,),
                      Text('Search movies,shows...',style: TextStyle(color: Colors.grey,fontSize: 15),)
                    ],
                  ),
                ),
              ),
                Container(height: height*0.037,
                width: width*0.11,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(10)
                  ),
                 child: Icon(Icons.filter_alt_off_outlined,color: Colors.white,),
                ),
            ],),
            SizedBox(height: height*0.02,),
            ////////////////////////////////////////row 2        carosal
            CarouselSlider.builder(
              itemCount: 3,
                itemBuilder: (context,index , realIndex){
                return  Stack(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(widget.alldatac[index]['landscapeimage'])),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    height: height*0.215,
                  ),

                  Positioned(
                    top: height*0.025,
                    left: width*0.045,
                    child: Container(
                      width: width*0.55,
                      child:  Column(
                        spacing: height*0.010,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(widget.alldatac[index]['mname'],style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                          Text(widget.alldatac[index]['movieshortdesc'],style: TextStyle(color: Colors.white70),),
                          Container(
                            height: height*0.045,
                            width: width*0.3,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.play_arrow,color:Colors.white ,size: 17,),
                                Text('Watch now',style: TextStyle(color: Colors.white,fontSize: 11),)
                              ],
                            ),
                          ),
                        ],
                      ),),
                  )

                ],);
                } , options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              autoPlayInterval: Duration(seconds: 3),
              enlargeCenterPage: true

            )),
            SizedBox(height: height*0.01,),

            //////////////////////////////////////////row 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Categories',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
              Text('See All',style: TextStyle(color: Colors.red,fontSize: 15,),),
            ],),
            SizedBox(height: height*0.02,),
////////////////////////// tabbar
            SizedBox(
              height: height*0.05,
              child: TabBar(
                controller: tabController,
                dividerHeight: 0,
                unselectedLabelColor: Colors.white,
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                  labelColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.white,
                  fontSize: 13),
                indicatorSize: TabBarIndicatorSize.tab,
                 labelPadding: EdgeInsets.symmetric(horizontal: 8) ,
                  indicatorColor: Colors.transparent,
                  onTap: (index){
                  setState(() {
                    tabindex=index;
                  });
                  },
                  tabs:  [
                    Tab(
                      child: Container(
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: tabindex==0? Colors.red:Colors.grey.shade800, borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text("All"),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: tabindex==1? Colors.red:Colors.grey.shade800, borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text("Action"),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: tabindex==2? Colors.red:Colors.grey.shade800, borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text("Comedy"),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: tabindex==3? Colors.red:Colors.grey.shade800, borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text("Drama"),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: tabindex==4? Colors.red:Colors.grey.shade800, borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text("Sci-fi"),
                      ),
                    ),
              ]),
            ),
            ////////////////////////////////////////// row 5 popular movies
            SizedBox(height: height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Movies',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                Text('See All',style: TextStyle(color: Colors.red,fontSize: 15,),),
              ],),
            SizedBox(height: height*0.015,),
            ///////////////////////////////////////////////////////////// row 6 gridview
           Flexible(
             child: TabBarView(
                 controller: tabController,
                 children: [
                   GridView.builder(
                     shrinkWrap: true,
                      itemCount:widget.alldatac.length,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 4,
                         crossAxisSpacing: 10,
                         mainAxisSpacing: 14,
                         childAspectRatio: 0.5,
                       ),
                     itemBuilder: (context,index){

                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: GestureDetector(
                        onTap: (){
                          desciptionlist.clear();
                          desciptionlist.add(widget.alldatac[index]);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>descriptionproject2(descriptionlist: desciptionlist, watchlist: widget.watchlist,selectedindex: 0,)));

                        },
                        child: Container(
                        // color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 84,
                               child: Image.asset(widget.alldatac[index]['profileimage']),
                              ),
                              Text(widget.alldatac[index]['mname'],style: TextStyle(
                                fontSize: 11,
                                color: Colors.white
                              ),
                              overflow:TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              Spacer(),
                              Row(
                                children: [
                                Icon(Icons.star,color: Colors.orange,size: 18,),
                                Text(widget.alldatac[index]['rating'],style: TextStyle(color: Colors.orange,fontSize: 12),)
                              ],)
                            ],
                          ),
                        ),
                      ),
                    );
                     }),
                   /////////////////////////////////////////////// action
                   GridView.builder(
                       shrinkWrap: true,
                       itemCount:widget.actionc.length,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 4,
                         crossAxisSpacing: 10,
                         mainAxisSpacing: 14,
                         childAspectRatio: 0.5,
                       ),
                       itemBuilder: (context,index){
                         return Padding(
                           padding: const EdgeInsets.all(2.0),
                           child: GestureDetector(
                             onTap: (){
                              setState(() {
                                desciptionlist.clear();
                                desciptionlist.add(widget.actionc[index]);
                              });
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>descriptionproject2(descriptionlist: desciptionlist,watchlist: widget.watchlist,selectedindex: 0,)));
                             },
                             child: Container(
                               // color: Colors.white,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     height: 84,
                                     child: Image.asset(widget.actionc[index]['profileimage']),
                                   ),
                                   Text(widget.actionc[index]['mname'],style: TextStyle(
                                       fontSize: 11,
                                       color: Colors.white
                                   ),
                                     overflow:TextOverflow.ellipsis,
                                     maxLines: 2,
                                   ), Spacer(),
                                   Row(children: [
                                     Icon(Icons.star,color: Colors.orange,size: 18,),
                                     Text(widget.actionc[index]['rating'],style: TextStyle(color: Colors.orange,fontSize: 12),)
                                   ],)
                                 ],
                               ),
                             ),
                           ),
                         );
                       }),
                   /////////////////////////////////////////////// Comedy
                   GridView.builder(
                       shrinkWrap: true,
                       itemCount:widget.comedyc.length,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 4,
                         crossAxisSpacing: 10,
                         mainAxisSpacing: 14,
                         childAspectRatio: 0.5,
                       ),
                       itemBuilder: (context,index){

                         return Padding(
                           padding: const EdgeInsets.all(2.0),
                           child: GestureDetector(
                             onTap: (){
                               desciptionlist.clear();
                               desciptionlist.add(widget.comedyc[index]);
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>descriptionproject2(descriptionlist: desciptionlist,watchlist: widget.watchlist,selectedindex: 0,)));
                             },
                             child: Container(
                               // color: Colors.white,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     height: 84,
                                     child: Image.asset(widget.comedyc[index]['profileimage']),
                                   ),
                                   Text(widget.comedyc[index]['mname'],style: TextStyle(
                                       fontSize: 11,
                                       color: Colors.white
                                   ),
                                     overflow:TextOverflow.ellipsis,
                                     maxLines: 2,
                                   ), Spacer(),
                                   Row(children: [
                                     Icon(Icons.star,color: Colors.orange,size: 18,),
                                     Text(widget.comedyc[index]['rating'],style: TextStyle(color: Colors.orange,fontSize: 12),)
                                   ],)
                                 ],
                               ),
                             ),
                           ),
                         );
                       }),
                   //////////////////////////////////////////////  Drama
                   GridView.builder(
                       shrinkWrap: true,
                       itemCount:widget.dramac.length,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 4,
                         crossAxisSpacing: 10,
                         mainAxisSpacing: 14,
                         childAspectRatio: 0.5,
                       ),
                       itemBuilder: (context,index){

                         return Padding(
                           padding: const EdgeInsets.all(2.0),
                           child: GestureDetector(
                             onTap: (){
                             setState(() {
                               desciptionlist.clear();
                               desciptionlist.add(widget.dramac[index]);
                             });
                               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>descriptionproject2(descriptionlist: desciptionlist,watchlist: widget.watchlist,selectedindex: 0,)));
                               // Navigator.push(context, MaterialPageRoute(builder: (context)=>descriptionproject2(descriptionlist: drama)));
                             },
                             child: Container(
                               // color: Colors.white,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     height: 84,
                                     child: Image.asset(widget.dramac[index]['profileimage']),
                                   ),
                                   Text(widget.dramac[index]['mname'],style: TextStyle(
                                       fontSize: 11,
                                       color: Colors.white
                                   ),
                                     overflow:TextOverflow.ellipsis,
                                     maxLines: 2,
                                   ), Spacer(),
                                   Row(children: [
                                     Icon(Icons.star,color: Colors.orange,size: 18,),
                                     Text(widget.dramac[index]['rating'],style: TextStyle(color: Colors.orange,fontSize: 12),)
                                   ],)
                                 ],
                               ),
                             ),
                           ),
                         );
                       }),
                   /////////////////////////////////////////////// Scifi
                   GridView.builder(
                       shrinkWrap: true,
                       itemCount:widget.scific.length,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 4,
                         crossAxisSpacing: 10,
                         mainAxisSpacing: 14,
                         childAspectRatio: 0.5,
                       ),
                       itemBuilder: (context,index){

                         return Padding(
                           padding: const EdgeInsets.all(2.0),
                           child: GestureDetector(
                             onTap: (){
                               desciptionlist.clear();
                               desciptionlist.add(widget.scific[index]);
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>descriptionproject2(descriptionlist: desciptionlist,watchlist: widget.watchlist,selectedindex:0,)));
                             },
                             child: Container(
                               // color: Colors.white,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     height: 84,
                                     child: Image.asset(widget.scific[index]['profileimage']),
                                   ),
                                   Text(widget.scific[index]['mname'],style: TextStyle(
                                       fontSize: 11,
                                       color: Colors.white
                                   ),
                                     overflow:TextOverflow.ellipsis,
                                     maxLines: 2,
                                   ), Spacer(),
                                   Row(children: [
                                     Icon(Icons.star,color: Colors.orange,size: 18,),
                                     Text(widget.scific[index]['rating'],style: TextStyle(color: Colors.orange,fontSize: 12),)
                                   ],)
                                 ],
                               ),
                             ),
                           ),
                         );
                       }),
                    ],
             ),

           )
          ],
        ),
      ),

    );
      
  }
}
