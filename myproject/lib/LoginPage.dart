import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/InstagramPage.dart';
import 'package:myproject/MoreInfoPage.dart';

class LoginPage extends StatelessWidget{

  var emailText = TextEditingController();
  var passText = TextEditingController();
  var phoneText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Login Page'),

      ),

        body: Center(
          child: Container(
            //width: 300,

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
                TextField(
                  controller: emailText,
                  //enabled: false,

                  decoration: InputDecoration(
                    hintText: 'Enter E-mail',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.purple,
                          width: 2,
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    suffixText: "@gmail.com",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.email,color: Colors.purple,),
                      onPressed: (){
                        print('Enter E-mail');
                      },
                    ),
                  ),
                ),

                Container(
                  height: 10,
                ),

                TextField(
                  keyboardType: TextInputType.number,
                  controller: phoneText,
                  //enabled: false,

                  decoration: InputDecoration(
                    //hintText: 'Enter phone number',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.purple,
                          width: 2,
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    prefixText: "+91",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.phone,color: Colors.purple,),
                      onPressed: (){
                        print('Enter valid Phone number');
                      },
                    ),
                  ),
                ),

                Container(
                  height: 10,
                ),

                TextField(
                  controller: passText,
                  obscureText: true,
                  obscuringCharacter: '*',

                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.purple,
                          width: 2,
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    suffixText: "password",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye_outlined,color: Colors.purple,),
                      onPressed: (){
                        print('Enter strong password');
                      },
                    ),
                  ),
                ),

                Container(
                  height: 10,
                ),

                ElevatedButton(onPressed: (){

                  String uEmail=emailText.text.toString();
                  String uPass=passText.text;
                  String uPhone=phoneText.text;
                  
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => MoreInfoPage(uEmail))
                  );
                  print("E-mail: $uEmail, Phone number: $uPhone, Password: $uPass");
                  
                },
                  child: Text("Login"),
                )
              ],
            ),
          ),
        )

    );
  }


}