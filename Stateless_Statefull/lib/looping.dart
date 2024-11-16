import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi",
            style:
            TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              height: 200,
              child: ClipRRect(borderRadius: BorderRadius.circular(20),
                child: Image.network("https://picsum.photos/200/300",
                  fit: BoxFit.fill,),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            for(var i=0;i<10;i++)
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 100,
                          height: 130,
                          child: ClipRRect(borderRadius: BorderRadius.circular(20),
                            child: Image.network("https://picsum.photos/id/${i+268}/200/300",
                              fit: BoxFit.fill,),
                          )
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 400,
                        height: 100,
                        decoration: BoxDecoration(borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                          color: i%2  == 0?Colors.red: Colors.green,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Gambar ${i}", style: TextStyle(color: Colors.white),),
                            Text("Pemandangan", style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      )
                    ],),
                ],
              ),
          ],
        ),
      ),
    );
  }
}