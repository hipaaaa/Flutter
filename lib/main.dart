import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fyp2/Signup.dart';
import 'package:fyp2/square_tile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fyp2',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Life Assist Application'),
      debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder>{
        '/Signup':(BuildContext context)  => new Signup(),
       // '/main':(BuildContext context => new Scaffold(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

 State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body:  Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: <Widget> [
          SizedBox(height: 10),
                   Container(
            alignment: Alignment.topCenter,
            child: Text('Hello There,',
                style: TextStyle(fontWeight: FontWeight.bold, color:Colors.black,fontSize: 40,
                )),
          ),
          SizedBox(height: 15),
          Container(
           alignment:Alignment.topCenter,
            child:      Text('Create An Account',style: TextStyle(fontWeight:FontWeight.bold,color:Colors.black,fontSize: 45, fontFamily: 'Times New Roman'),),

          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            decoration:BoxDecoration(
                color:Colors.green.shade300,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color:Colors.white,
                      blurRadius: 6,
                      offset: Offset(0,2)
                  )
                ]
            ),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.name,
              style: TextStyle(
                color: Colors.white ,
                //Text color of the input text
              ),

              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:17),
                prefixIcon: Icon(
                  Icons.person_4_sharp,
                  color: Colors.white,
                  size: 27,

                ),
                hintText: 'First Name',
                hintStyle: TextStyle(
                  color: Colors.white,


                ),

              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            decoration:BoxDecoration(
                color:Colors.green.shade300,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color:Colors.white,
                      blurRadius: 6,
                      offset: Offset(0,2)
                  )
                ]
            ),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.name,
              style: TextStyle(
                color: Colors.white ,//Text color of the input text
              ),

              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:16),
                prefixIcon: Icon(
                  Icons.person_4_sharp,
                  color: Colors.white,
                  size: 27,

                ),
                hintText: 'Last Name',
                hintStyle: TextStyle(
                  color: Colors.white,

                ),

              ),
            ),
          ),
          SizedBox(height: 20,width: 300,),
          Container(
            alignment: Alignment.centerLeft,
            decoration:BoxDecoration(
                color:Colors.green.shade300,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color:Colors.white,
                      blurRadius: 6,
                      offset: Offset(0,2)
                  )
                ]
            ),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.white ,//Text color of the input text
              ),

              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:18),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 27,

                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.white,

                ),

              ),
            ),
          ),
          SizedBox(height: 20),
          Container(

            decoration:BoxDecoration(
                color:Colors.green.shade300,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color:Colors.white,
                      blurRadius: 6,
                      offset: Offset(0,2)
                  )
                ]
            ),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(
                color: Colors.white ,//Text color of the input text
              ),
              obscureText: true,

              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:17),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 27,

                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.white,
                  //SizedBox(width:40.0),
                ),
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: Colors.white,
                ),

              ),
            ),
          ),
        SizedBox(height: 50,),

      Container(
        height: 45,
        width: 600,
        child: Material(
          borderRadius: BorderRadius.circular(20),
          shadowColor: Colors.black87,
          color: Colors.green.shade300,
          elevation: 7,

          child: GestureDetector(
            onTap: () {},
            child: Center(
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  //fontFamily: 'Times New Roman',
                  fontSize: 23,
                ),
              ),

            ),
          ),
        ),

      ),//This container prints REGISTER TO THE HOMESCREEN

       //or continue with
       const SizedBox(height: 50,),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 50),
          child: Row(

            children: [
              Expanded(
                  child: Divider(
                    thickness:1,
                    color:Colors.grey[400],

                  ),
              ),
               Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
               child:Text('Or continue with ',
                 style: TextStyle( color: Colors.grey[700]),
               ),
               ),

              Expanded(child:
              Divider(thickness:0.5,
                  color: Colors.grey[400],

              ),
              ),
            ],
          ),
          ),// THIS ONE PRINTS LINE WITH OR CONTINUE
       const SizedBox(height: 5,),
       
       //google +Facebook logo bottons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              //Google logo buttom 
              SquareTile(imagePath: 'lib/images/googleLogo.jpg'),
              const SizedBox(height: 25,),
              //Facebook buttom
              SquareTile(imagePath: 'lib/images/facebookLogo.jpg')
            ],
          ),


      SizedBox(height: 40,),
    /** Row(
       mainAxisAlignment: MainAxisAlignment.center ,
       children: [
         Text('Already have an account?',
         style: TextStyle(color:Colors.black87)
    ),
    Text('Login',
    style:TextStyle(
     color:Colors.lightGreen,
    fontWeight:FontWeight.bold,

    ),
    ),
       ],
     )**/

        Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      InkWell(
    onTap:(){
      Navigator.of(context).pushNamed('/Signup');

    },
    child: Text(
    'Already have account ? Login ',
     style: TextStyle(
       fontWeight: FontWeight.bold,
     ),
    ),
      )
    ],
         )
      ],
      ),
    );
  }
}
