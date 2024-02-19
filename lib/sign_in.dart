import 'package:flutter/material.dart';
import 'package:newtry2ses_2/Theme.dart';
import 'package:newtry2ses_2/home.dart';
import 'package:newtry2ses_2/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 88, left: 19),
            child: Text("Welcome Back",
              style: Theme.of(context).textTheme.titleLarge),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 19),
            child: Text("Fill in your email and password to continue",
              style: Theme.of(context).textTheme.titleMedium
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 19),
            child: Text("Email Address",
              style: TextStyle(
                  color: Color.fromARGB(255, 167, 167, 167)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 19, right: 19),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 167, 167, 167)),
                borderRadius: BorderRadius.circular(1)
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 14, bottom: 14, left: 10),
                child: Text("********@gmail.com",
                  style: TextStyle(
                      color: Color.fromARGB(255, 167, 167, 167)
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 19),
            child: Text("Password",
              style: TextStyle(
                  color: Color.fromARGB(255, 167, 167, 167)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 19, right: 19),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 167, 167, 167)),
                  borderRadius: BorderRadius.circular(1)
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 14, bottom: 14, left: 10),
                child: Text("********",
                  style: TextStyle(
                      color: Color.fromARGB(255, 167, 167, 167)
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Row(children: [
                Checkbox(
                  side: BorderSide(
                    width: 1,
                    color: Color.fromARGB(255, 167, 167, 167)
                  ),
                    value: isChecked, onChanged: (bool? value){
                    setState(() {
                      isChecked = value!;
                    });
                })
              ],),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Remember password",
                      style: TextStyle(
                        color: Color.fromARGB(255, 167, 167, 167)
                      ),),
                      Text(" Forgot Password?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 5, 96, 250)
                      ),)
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 19, right: 19),
                      child: FilledButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return Home();
                          }));
                        },
                        child: Text("Login",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)
                          ),
                ),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                        backgroundColor: MaterialStateProperty.resolveWith((states)
                        => Color.fromARGB(255, 5, 96, 250)))
                      ),),
                    ),
              ]),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 20, bottom: 24),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return Sign_up();
                  }));
                },
                child: RichText(text: TextSpan(
                    children: [
                      TextSpan(text: "Remember password",
                          style: TextStyle(
                              color: Color.fromARGB(255, 167, 167, 167))),
                      TextSpan(text: "Forgot Password?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 5, 96, 250)
                          ))
                    ])),
              ),
            ),
          )
        ],
      ),
    );
  }
}
