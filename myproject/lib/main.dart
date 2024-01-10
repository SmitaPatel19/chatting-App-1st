import 'package:flutter/material.dart';
import 'package:myproject/LoginPage.dart';
import 'package:myproject/SplashPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Smita's App"),
      ),

      body:

        Container(

          decoration: BoxDecoration(
              gradient: RadialGradient(
                  colors: [
                    Colors.pink.shade50,
                    Colors.purple.shade50,
                    Colors.purple.shade100,
                  ]
              )
          ),

          child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(

                      margin: EdgeInsets.only(top:80,bottom:110),

                      //color: Colors.lightBlue,
                      child: Column(
                        children: [
                          Center(
                            child: Text("Chatting App",style: TextStyle(
                              color:Colors.purple,
                              fontWeight:FontWeight.bold,
                              fontSize:30,
                              fontStyle: FontStyle.italic,
                            )
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(8),
                            //color: Colors.yellow,
                              width: 300,
                              height:300,
                              child: Center(child: Image.asset('assets/images/logo.jpg'))
                          ),

                          Text('Click to Login',style:TextStyle(
                            color:Colors.purple,
                            fontSize:18,
                            fontWeight:FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top:8),
                            child: ElevatedButton(onPressed: (){

                              Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return LoginPage();

                                })
                              );
                              print("LOGINED WITH GOOGLE");

                              },
                                child: Text("LOGIN WITH GOOGLE",style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                )
                                )
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top:8),
                            child: ElevatedButton(onPressed: (){

                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => LoginPage())
                              );
                              print("LOGINED WITH E-MAIL");

                              },
                                child: Text("LOGIN WITH E-MAIL",style: TextStyle(
                                  color:Colors.purple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                )
                            ),
                          )

                        ],
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.only(top:370,bottom: 320),
                        child: Column(
                          children: [
                            Text("About",style: TextStyle(
                              fontSize: 30,
                              color:Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                            ),

                            Text("This is an app!!",style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color:Colors.purple,
                            )
                            )
                          ],
                        ),

                      ),
                  ],
                ),
              ),
        ),



        // Center(
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(top: 130,bottom: 130),
        //           child: Container(
        //               child: SingleChildScrollView(
        //                 child: Column(
        //                   children: [
        //                     Text("Translator App",style: TextStyle(
        //                       color: Colors.purple,
        //                       fontWeight: FontWeight.bold,
        //                       fontSize: 25,
        //                     ),),
        //
        //                     Container(height: 250,width: 250,child: Image.asset('assets/images/logo.jpg')),
        //                     Text("Click to Login",style:TextStyle(
        //                       color:Colors.purple,
        //                     )),
        //
        //                     ElevatedButton(onPressed: (){print("LOGIN");}, child: Text("LOGIN WITH GOOGLE",style:TextStyle(
        //                       color:Colors.purple,
        //                       fontWeight: FontWeight.bold,
        //                     )
        //                     )
        //                     ),
        //
        //                     ElevatedButton(onPressed: (){ print("LOGIN");}, child: Text("LOGIN WITH E-MAIL",style:TextStyle(
        //                       color:Colors.purple,
        //                       fontWeight:FontWeight.bold,
        //                     )
        //                     )
        //                     ),
        //
        //
        //                   ],
        //                 ),
        //               )
        //             ),
        //         ),
        //         Column(
        //           children: [
        //             Text("ABOUT",style: TextStyle(
        //               color:Colors.purple,
        //               fontWeight: FontWeight.bold,
        //               fontSize: 30,
        //             )
        //             ),
        //
        //             Container(
        //               height: 300,
        //               width: 300,
        //                 child: Center(
        //                   child: Text("This is an app made by Smita Patel. This is very good app and easy to use\n",style: TextStyle(
        //                     color: Colors.purple  ,
        //                     fontWeight: FontWeight.bold,
        //                     fontSize: 18,
        //                   ),
        //                   ),
        //                 ),
        //             ),
        //
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // )



      // Center(
      //   child: Container(
      //       width: 300,
      //       height: 250,
      //       child: Image.asset('assets/images/ME.jpg')
      //   ),
      // )


        // OutlinedButton(
        //   child:Text("CLICK!!"),
        //   onPressed: (){
        //     print("HII");
        //   },
        // )

        // ElevatedButton(
        //   child: Text("Click to login!!"),
        //   onPressed: (){
        //     print("OPENED");
        //   },
        // )

        // TextButton(
        //   child: Text("Click to Login!"),
        //   onPressed: (){
        //     print("LOGIN");
        //   },
        // )

      // Center(
      //   child: Container(
      //         width:100,
      //         height:100,
      //         color:Colors.purpleAccent,
      //     child:Center(
      //         child: Text("Hello!!",style: TextStyle(
      //         color: Colors.black,
      //       fontSize: 25,
      //       fontWeight: FontWeight.bold,
      //      // backgroundColor: Colors.lightBlueAccent,
      //     )
      //     )
      //     ),
      //   ),
      // ),


    );
  }
}
