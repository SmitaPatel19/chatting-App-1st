import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactListPage extends StatelessWidget{

  var arr=['Smita','Sneha','Arpita','Advik','Arya','Saumya','Anika','Janhvi','Niyati','Pragati','Shailly','Sarah'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Contacts'),
      ),

        body:

        Card(

          elevation: 10,
          child: ListView.separated(itemBuilder: (context,index){
            return Card(
              elevation: 20,
              child: ListTile(
                leading: CircleAvatar(
                  child: Container(
                      width: 35,
                      height: 40,
                      child: Image.asset('assets/images/myPhoto.jpg')),
                  backgroundColor: Colors.black38,
                  maxRadius: 25,
                ),
                title: Text(arr[index],style: TextStyle(fontFamily: 'Font' ),),
                subtitle: Text('Number'),
                trailing: Icon(Icons.add_a_photo_outlined),
              ),
            );
          },
            itemCount: arr.length,
            separatorBuilder:(context,index){
              return Divider(height:1 , thickness:2);
            },
          ),
        )

    );
  }


}