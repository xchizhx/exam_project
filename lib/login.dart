import 'package:exam_project_2/home.dart';
import 'package:exam_project_2/sing_up.dart';
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            const Padding(
              padding: EdgeInsets.only(left: 19, top: 33),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Email Address",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 19, right: 19),
              child: Container(
                decoration: BoxDecoration(border: Border.all(
                  color: const Color.fromARGB(255, 167, 167, 167), width: 1),
                    borderRadius: BorderRadius.circular(4)
              ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 14, left: 10, bottom: 14),
                  child: Text("***********@mail.com",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167)),),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 19, top: 33),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Password",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 8, right: 19),
              child: Container(
                decoration: BoxDecoration(border: Border.all(
                    color: const Color.fromARGB(255, 167, 167, 167), width: 1),
                    borderRadius: BorderRadius.circular(4)
                ),
                child: const Padding(
                    padding: EdgeInsets.only(left: 10, top: 14, bottom: 14),
                    child: Text("**********",
                      style: TextStyle(color: Color.fromARGB(255, 167, 167, 167)),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                  children: [
                    Checkbox(
                      side: const BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 167, 167, 167)
                      ),
                        value: isChecked, onChanged: (bool? value){
                          setState(() {
                            isChecked = value!;
                          });
                    }),
                    const Text("Remember password",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color.fromARGB(255, 167, 167, 167),
                      fontSize: 12, fontWeight: FontWeight.w500)),
                    Column(
                      children: [
                        TextButton(onPressed: (){},
                          child: const Text("Forgot Password?",
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Color.fromARGB(255, 5, 96, 250),
                        fontSize: 12)
                        ),
                        )
                      ]
                    )
                  ],
                ),
              ]),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 325,left: 19, right: 19),
                child: OutlinedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context){
                        return Home();
                      }));
                },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                        backgroundColor: MaterialStateColor.resolveWith((states)
                        => const Color.fromARGB(255, 5, 96, 250))),
                  child: const Text("Login",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16),
                  )
                ),
              ),
            ),
            Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 24),
              child: GestureDetector(
                onTap: (){
                Navigator.of(context).push(MaterialPageRoute
                  (builder: (context){
                  return Sign_up();
                }));
              },
                child: RichText(text: const TextSpan(
                  children: [
                    TextSpan(text: "Not have account?",
                        style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
                    TextSpan(text: "Sign Up",
                        style: TextStyle(color: Color.fromARGB(255, 5, 96, 250)))
                      ]
                    )
                  ),
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
