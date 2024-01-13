import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 33, left: 19),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Welcome Back",
                    style: TextStyle(color: Color.fromARGB(255, 58, 58, 58),
                        fontSize: 24)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, left: 19),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Fill in your email and password to continue",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19, top: 33),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Email Address",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
              ),
            ),
            Container(
              child: Text("",
                 ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19, top: 33),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Password",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
              ),
            ),
            Container(
              child: Text(""),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Row(
                children: [
                  Checkbox(
                      value: isChecked, onChanged: (bool? value){
                        setState(() {
                          isChecked = value!;
                        });
                  }),
                  Text("Remember password",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
                  Text("Forgot Password?",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167)))
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 285),
                child: OutlinedButton(onPressed: (){
                },
                  child: Text("Login")),
              ),
            ),
            Align(
            alignment: Alignment.center,
            child: RichText(text: TextSpan(
              children: [
                TextSpan(text: "Sign Up",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
                TextSpan(text: "Not have account?",
                    style: TextStyle(color: Color.fromARGB(255, 5, 96, 250)))
                  ]
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
