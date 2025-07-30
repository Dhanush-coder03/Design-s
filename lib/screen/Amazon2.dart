import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class amaz2 extends StatefulWidget {
  const amaz2({super.key});

  @override
  State<amaz2> createState() => _amaz2State();
}

class _amaz2State extends State<amaz2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(Icons.search),
            hintText: "Search Amazon.in",
            border: OutlineInputBorder(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              color: Colors.cyan,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.location_on),
                  ),
                  Text("Delivery to Avinashi 641670"),
                ],
              ),
            ),
            Container(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lis.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(lis[index].image),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(),
                          ),
                        ),
                        Text(lis[index].text),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 250,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 250,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.linear,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: 15,
                itemBuilder: (BuildContext context, int index, int pageViewIndex) {
                  return Container(
                    width: 380,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/amaz.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage("assets/amaz.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("Clothings"),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Discover products for you",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 440,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1 / 1.1,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage("assets/amaz.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Khadi Natural Rose & Hon....  -15% 178"),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Model
{
  String? image;
  String? text;

  Model(this.image,this.text);
}

List lis = data.map((e)=>Model(e["image"], e["text"])).toList();

var data = [
  {"image":"assets/amaz.jpg","text":"Clothings"},
  {"image":"assets/amaz.jpg","text":"Mobiles"},
  {"image":"assets/amaz.jpg","text":"Laptop"},
  {"image":"assets/amaz.jpg","text":"Shoes"},
  {"image":"assets/amaz.jpg","text":"Sandals"},
];