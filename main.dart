import 'package:flutter/material.dart';
void main() => runApp(clone());
class clone extends StatefulWidget{
  @override
  State<clone> createState() => _cloneState();
}

class _cloneState extends State<clone> {
  var name = [ "assets/images/dhoni.jpg" ,"assets/images/virat.jpeg" ,"assets/images/rohits.jpg" ,"assets/images/sachin.jpeg"];
  @override
  Widget build(BuildContext context) {

      return MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black12,
            toolbarHeight: 100,
             leading: CircleAvatar(backgroundImage: AssetImage("assets/images/profile.jpg") ,radius: 10 ),
            title: Text("Parth Yadav"),
            actions: [
              CircleAvatar(
                child: Icon(Icons.search ,color: Colors.white,),
                backgroundColor: Colors.white10,
              ),
              SizedBox(width: 10,)
            ],
          ),
          body:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Text("  Stories",style: TextStyle(fontSize: 20),),
                SizedBox(height: 25,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for(int i = 0 ; i < name.length ; i++)
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              width: 100,
                                color: Colors.black,
                              child: Image.asset("${name[i]}" ),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
               SizedBox(height: 20,),
              Row(children: [
                Text("Trending" ,style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.w500),),
                SizedBox(width: 180,),
                Text("More" ,style: TextStyle(color: Colors.yellow ,fontWeight: FontWeight.bold),),
                Icon(Icons.arrow_forward ,color: Colors.yellow,)
              ],),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height:330,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(21),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                            child: Container(
                                child: Image.asset("assets/images/roll.jpg" ,height: 180,),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21),
                                ),
                              ),
                            ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              child: Image.asset("assets/images/one.jpeg", ),
                              height: 40,
                              width: 40,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 4,),
                            Text("Shubham" ,style: TextStyle(fontWeight: FontWeight.w700),),
                            Text("2 min ago" ,style: TextStyle(fontSize: 10),)
                          ],),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 13.0),
                        child: Text("We don't pray for love, we just pray for cars"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 81.0),
                        child: Text("Life is too short for boring cars."),
                      ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Row(
                        children: [
                          Text("#Cars" ,style: TextStyle(fontSize: 10),),
                          SizedBox(width: 5,),
                          Text("#Engines",style: TextStyle(fontSize: 10),),
                          SizedBox(width: 5,),
                          Text("#RollRoyce",style: TextStyle(fontSize: 10),),
                          SizedBox(width: 5,),
                          Text("#RichLife",style: TextStyle(fontSize: 10),),
                          SizedBox(width: 5,),
                          Text("#Millionare",style: TextStyle(fontSize: 10),),
                        ],
                      ),
                    )
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      );
  }
}