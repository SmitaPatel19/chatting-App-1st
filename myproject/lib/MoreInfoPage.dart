import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myproject/InstagramPage.dart';


class MoreInfoPage extends StatefulWidget{

  var emailFromHome;

  MoreInfoPage(this.emailFromHome);

  @override
  State<MoreInfoPage> createState() => _MoreInfoPageState();
}

class _MoreInfoPageState extends State<MoreInfoPage> {
  var nameCon = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Personal Information")

      ),

      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Colors.pink.shade50,
                Colors.purple.shade50,
                Colors.purple.shade100,
              ]
            )
          ),

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Hello, ${widget.emailFromHome}",style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),

              SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.black12,
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.purple,
                    )
                  )
                ),
                controller: nameCon,
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                    width: 270,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 14,left:8),
                      child: Text(" DOB   DD/MM/YYYY",style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                  ),

                  ElevatedButton(onPressed: () async {
                    DateTime? datePick = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2023),
                    );

                  }, child: Text("Show")),
                ],
              ),

              SizedBox(height: 20,),

              ElevatedButton(onPressed: (){

                Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  InstagramPage())
                );
              }, child: Text("Save",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),))
            ],
          ),
        ),
      ),
    );
  }
}