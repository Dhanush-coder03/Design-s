import 'package:flutter/material.dart';
import 'model.dart';

  class spoti extends StatefulWidget {
  const spoti({super.key});

  @override
  State<spoti> createState() => _spotiState();
}

class _spotiState extends State<spoti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: true,
              snap: false,
              pinned: true,
              floating: false,
              backgroundColor: Colors.blueGrey,
              title: Icon(Icons.arrow_back),
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Vibe Time"),
                background: Image.asset(
                  "assets/spoti jk.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Column(
          children: [
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.add_circle),
                  Icon(Icons.downloading_rounded),
                  Icon(Icons.more_horiz),
                  Icon(Icons.shuffle),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xFF1DB954),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: abc.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF121212), Color(0xFF121212)],
                      ),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 60,
                        width: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Image.asset(
                          abc[index].image,
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Text(
                        abc[index].text,
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Qwe
{
  String? image;
  String? text;

  Qwe(this.image,this.text);

}

List abc = poi.map((e) => Qwe(e["image"], e["text"])).toList();

var poi = [

  {"image":"assets/kk.jpg","text":"Karu Karu"},
  {"image":"assets/aa.jpg","text":"Aathichoodi"},
  {"image":"assets/om.jpg","text":"One Last time"},
  {"image":"assets/nnn.jpg","text":"Kadhale Kadhale"},
  {"image":"assets/kkk.jpg","text":"Kadhak Kappal"},
  {"image":"assets/ord.jpg","text":"Oru Devathai"},

];