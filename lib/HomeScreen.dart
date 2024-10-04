import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  showModelBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (BuildContext context) {

      return Container(
        padding: EdgeInsets.all(20),
        height: 250,
        child: Column(

          children: [

              ListTile(leading: Icon(Icons.share),
              title: Text("Share"),
              onTap: () {
                Navigator.pop(context);
              },),

            ListTile(leading: Icon(Icons.link),
              title: Text("Get Link"),
              onTap: () {
                Navigator.pop(context);
              },),

            ListTile(leading: Icon(Icons.edit),
              title: Text("EDIT"),
              onTap: () {
                Navigator.pop(context);
              },),


          ],
        ),
      );

    });

  }
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void showPersistentBottomSheet(BuildContext context) {
    Scaffold.of(context).showBottomSheet((BuildContext context) {
      return Container(
        color: Colors.white,
        height: 200,
        child: const Center(
          child: Column(
            children: [

              ListTile(leading: Icon(Icons.music_note),
              title: Text("Music"),),

              ListTile(leading: Icon(Icons.video_library),
                title: Text("Video"),),

            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Persistent BottomSheet Display"),),
     body: Center(
       child: ElevatedButton(child: Text("Show Presistent BottomSheet"),onPressed: (){
         showPersistentBottomSheet(context);
       },),
     ),
   );
  }
}
