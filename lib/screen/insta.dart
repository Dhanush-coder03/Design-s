import 'package:flutter/material.dart';
import 'model.dart';


class inst extends StatefulWidget {
  const inst({super.key});

  @override
  State<inst> createState() => _instState();
}

class _instState extends State<inst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.lock_outline_sharp),
        title: Text("dhanush03__"),
        actions: [
          Icon(Icons.menu),
        ],
      ),
      body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxScrolled){

                return[SliverAppBar(
                  expandedHeight: 300,
                  pinned: true,
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/dp.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle
                              ),
                            ),
                            Column(
                              children: [
                                Text("1",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("Post",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                              ],
                            ),
                            Column(
                              children: [
                                Text("769",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("Followers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                              ],
                            ),
                            Column(
                              children: [
                                Text("854",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("Following",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Dhanush",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                      children: [
                                        Text("#choosetobekind",style: TextStyle(fontSize: 15,color: Colors.blueGrey),)
                                      ]
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Live the present!",style: TextStyle(fontSize: 15),)
                                    ],
                                  )

                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.slow_motion_video_sharp),
                                  Text("Daylight. ",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("David Kushner")
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 37,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(child: Text("Edit Profile",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                                ),
                                Container(
                                  height: 37,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(child: Text("Share Profile",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                                ),
                                Container(
                                  height: 37,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(Icons.people_alt_outlined),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  bottom: TabBar(tabs:[
                  Tab(icon: Icon(Icons.more_horiz),),
                    Tab(icon: Icon(Icons.video_collection_outlined),),
                    Tab(icon: Icon(Icons.person_add_alt),)

                  ],

                  ),
                )];

              },

              body: TabBarView(
                  children:[
                    Container(
                      height: 200,
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 5,
                            mainAxisSpacing: 2,
                            childAspectRatio: 0.65),
                          itemCount: bac.length,
                          itemBuilder: (BuildContext context,int index){

                            return Column(
                              children: [
                                Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    image: DecorationImage(
                                        image: AssetImage(bac[index].image),
                                      fit: BoxFit.fill
                                    )
                                  ),
                                )
                              ],
                            );
                          }
                      ),
                    ),
                    Container(
                      height: 200,
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 2,
                              childAspectRatio: 0.65),
                          itemCount: bac.length,
                          itemBuilder: (BuildContext context,int index){

                            return Column(
                              children: [
                                Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(
                                          image: AssetImage(bac[index].image),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                )
                              ],
                            );
                          }
                      ),
                    ),
                    Container(
                      height: 200,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 2,
                            childAspectRatio: 0.65),
                        itemCount: bac.length,
                        itemBuilder: (BuildContext context, int index){
                          return Column(
                            children: [
                              Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(bac[index].image),
                                    fit: BoxFit.fill,
                                  )
                                ),
                              )
                            ],
                          );
                        }
                    )
                    )

                  ]
              ),
          )
      ),
    );
  }
}

class ins

{
  String? image;

  ins(this.image);

}

List bac = Ins.map((h)=> ins(h["image"])).toList();

var Ins = [

  {"image":"assets/duke.jpg"},

];