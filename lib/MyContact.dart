import 'package:flutter/material.dart';
import 'package:learn/global%20LIst.dart';

class MyAllContact extends StatefulWidget {
  const MyAllContact({Key? key}) : super(key: key);

  @override
  State<MyAllContact> createState() => _MyAllContactState();
}

class _MyAllContactState extends State<MyAllContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          "All Contact",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            GlobalList.MyAlllist.isEmpty?Center(
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Text("Empty !", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red),),
        ],)

            ):
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount:  GlobalList.MyAlllist.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      height: 75,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  minRadius: 25,
                                  backgroundColor: Colors.indigoAccent,
                                  foregroundColor: Colors.white,
                                  child: Text( GlobalList.MyAlllist[index]["name"].toString()[0]),
                                ),
                                SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      GlobalList.MyAlllist[index]["name"],
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      GlobalList.MyAlllist[index]["Number"],
                                      style: TextStyle(
                                        color: Colors.grey[300],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    GlobalList.MyAlllist.removeAt(index);
                                  });
                                },
                                child: Icon(Icons.delete, color: Colors.greenAccent))
                          ],
                        ),
                      )),
                );
              },
            ),
          ],
        ),
      )
    );
  }
}
