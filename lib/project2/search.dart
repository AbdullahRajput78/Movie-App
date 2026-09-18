import 'package:flutter/material.dart';
import 'package:untitled/project2/descriptionproject2.dart';

class search extends StatefulWidget {
  List<Map<String,dynamic>> searchlist=[];
  List<Map<String,dynamic>> watchlist=[];

   search({super.key ,required this.searchlist, required this.watchlist});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  List<Map<String,dynamic>> search2list=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    search2list.addAll(widget.searchlist);
  }
  /////////////////////////////////////////// function for searching
  void searchMovie(String value) {
    setState(() {
      if (value.isEmpty) {
        search2list = List.from(widget.searchlist);
      } else {
        search2list = widget.searchlist.where((movie) {
          return movie['mname']
              .toString()
              .toLowerCase()
              .contains(value.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25,top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios_new,color: Colors.white,),
          SizedBox(
            width: width * 0.57,
            child: TextField(
              onChanged: (value){
                searchMovie(value);
              },
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Search movies...",
                hintStyle: TextStyle(color: Colors.grey.shade400),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.white70,
                ),
                filled: true,
                fillColor: Colors.grey.shade800,
                contentPadding: const EdgeInsets.symmetric(vertical: 8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),

                  ),
                ),
              ),
                Text('Cancel',style: TextStyle(color: Colors.red,fontSize: 18),)
              ],
            ),
            SizedBox(height:height*0.015,),
            Text('Movies',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),



            Expanded(
                child:
                ListView.builder(
                  itemCount: search2list.length,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>descriptionproject2(descriptionlist: search2list, watchlist:widget.watchlist , selectedindex: index)));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                      //    color: Colors.red,
                          width: width*0.80,
                          child: Row(
                            spacing: width*0.04,
                            children: [
                              Container(
                                height: height*0.10,
                                width: width*0.17,
                                // color: Colors.red,
                                child: Image.asset(search2list[index]['profileimage']),
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
                                        width: width*0.55,
                                   //     color: Colors.black,
                                        child: Column(
                                          spacing: 3,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Text(search2list[index]['mname'],style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold,
                                                  ),
                                                    overflow:TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                                                                 ),
                                                ),

                                              ],),
                                            Row(
                                              spacing: 7,
                                              children: [
                                                Text(search2list[index]['releasedate'],style: TextStyle(color: Colors.grey),),
                                                Icon(Icons.circle,size: 5,color: Colors.grey,),

                                                Text(search2list[index]['duration'],style: TextStyle(color: Colors.grey),),
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
                                      Text(search2list[index]['rating'],style: TextStyle(color: Colors.orange),),

                                    ],)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );

                  },
                )),
          ],

        ),
      ),

    );
  }
}
