import 'package:firstpro/screen/loginn.dart';
import 'package:flutter/material.dart';

class gta extends StatefulWidget {
  const gta({super.key});

  @override
  State<gta> createState() => _gtaState();
}

class _gtaState extends State<gta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.arrow_back),
        title: Text("Menu"),
        actions: [
          Icon(Icons.home),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(18),
                color: Colors.blueGrey,
              ),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Attendance Report"),

              ),
              


            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(),
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                leading: Icon(Icons.text_fields),
                title: Text("Mock Interview Report"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(),
                borderRadius: BorderRadius.circular(18),
              ),
              child: ListTile(
                leading: Icon(Icons.payment),
                title: Text("Payment Field"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(),
                borderRadius: BorderRadius.circular(19),
              ),
              child: ListTile(
                leading: Icon(Icons.umbrella),
                title: Text("All students project url"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(18)
              ),
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
              ),
            ),
          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: () {
            Navigator.push(
                context,
            MaterialPageRoute(builder: (context) => const loga()));
          }, child: Text("Log Out"))
        ],
      ),

    );
  }
}
