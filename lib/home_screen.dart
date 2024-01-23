import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn/MyNab.dart';
import 'package:learn/alert.dart';
import 'package:learn/global%20LIst.dart';
import 'package:learn/myDwer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
ClearAll() {
  GlobalList.MyAlllist.clear();
}
final formkey = GlobalKey<FormState>();

TextEditingController NameControler = TextEditingController();
TextEditingController NumberControler = TextEditingController();



class _HomeScreenState extends State<HomeScreen> {
  MySnackber(context, String msg) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$msg",style: TextStyle(fontSize: 18,),),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(
          "My Contact",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [Padding(
          padding: const EdgeInsets.all(5.0),
          child: IconButton(onPressed: (){},
              icon: PopupMenuButton(
              itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Row(
                                children: [
                                  Icon(Icons.alarm, color: Colors.black),
                                  Text("   Set Alarm")
                                ],
                              ),
                            ),
                PopupMenuItem(
                              child: Row(
                                children: [
                                  Icon(Icons.share, color: Colors.black),
                                  Text("   Share")
                                ],
                              ),
                            ),
                PopupMenuItem(
                              child: Row(
                                children: [
                                  Icon(Icons.info_outlined, color: Colors.black),
                                  Text("   About")
                                ],
                              ),
                            ),
                PopupMenuItem(
                              child: Row(
                                children: [
                                 IconButton(onPressed: (){
                                   SystemNavigator.pop();
                                 }, icon: Icon(Icons.exit_to_app,color: Colors.black,)),
                                  Text("  Exit")
                                ],
                              ),
                            ),

                          ],
              child: Icon(Icons.settings))),
        )],
      ),
      drawer: MyDwer(),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return MySnackber(context, "Sorry! No info available") ;
                    }
                    return null;
                  },
                  controller: NameControler,
                  decoration: InputDecoration(
                    hintText: "Name",
                    prefixIcon: Icon(CupertinoIcons.person_alt),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple.shade300)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple.shade300),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: TextFormField(
                  validator: (value){
                    if (value!.isEmpty) {
                      return "Please enter Number";
                    }
                    return null;
                  },
                  controller: NumberControler,
                  decoration: InputDecoration(
                    hintText: "Number",
                    prefixIcon: Icon(CupertinoIcons.phone_fill),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple.shade300)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple.shade300),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {
                        if(formkey.currentState!.validate()){
                          setState(() {
                            GlobalList.MyAlllist.insert(0, {
                              "name": NameControler.text.trim(),
                              "Number": NumberControler.text.trim()
                            });
                          });

                        }
                      },
                      child: Text(
                        "Save",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                    ),
                  ),
                  SizedBox(width: 60),
                  SizedBox(
                    width: 90,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Updete",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple),
                    ),
                  ),
                ],
              ),SizedBox(height: 26,),

              GlobalList.MyAlllist.isEmpty ? Text("No Contact yet...",
              style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),):
                  
              OutlinedButton(onPressed:(){
                setState(() {
                  GlobalList.MyAlllist.clear();
                });
              },
                child: Text("Clear All",style: TextStyle(color: Colors.red,fontSize: 20),),
              style: OutlinedButton.styleFrom(minimumSize: Size(50, 50)),),
              
              SizedBox(height: 16),
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
                        color: Colors.purple,
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
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: (){
          showDialog(context: context, builder: (context) => MyDialogBox());

        },child: Icon(CupertinoIcons.mail),
      ),

      bottomNavigationBar:MyNavBar()
    );

  }
}
