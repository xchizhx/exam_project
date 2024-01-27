import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sign_up extends StatefulWidget{


  Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
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
                child: Text("Create an account",
                    style: TextStyle(color: Color.fromARGB(255, 58, 58, 58),
                        fontSize: 24)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, left: 19),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Complete the sign up process to get started",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 19, top: 33),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Full name",
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
                    child: Text("Ivanov Ivan",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167)),)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 19, top: 33),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Phone Number",
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
                    child: Text("+7(999)999-99-99",
                      style: TextStyle(color: Color.fromARGB(255, 167, 167, 167)),)),
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
              padding: const EdgeInsets.only(left: 19, top: 8, right: 19),
              child: Container(
                decoration: BoxDecoration(border: Border.all(
                    color: const Color.fromARGB(255, 167, 167, 167), width: 1),
                    borderRadius: BorderRadius.circular(4)
                ),
                child: const Padding(
                    padding: EdgeInsets.only(left: 10, top: 14, bottom: 14),
                    child: Text("**********@gmail.com",
                    style: TextStyle(color: Color.fromARGB(255, 167, 167, 167)),)),
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
            const Padding(
              padding: EdgeInsets.only(left: 19, top: 33),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Confirm Password",
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

            Expanded(
              child: Row(
                children: [Padding(
                  padding: const EdgeInsets.only(left: 24, right: 14),
                    child: Checkbox(
                      side: const BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 167, 167, 167)
                      ),
                        value: isChecked, onChanged: (bool? value){
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                  ),
                  RichText(text: const TextSpan(
                      children: [
                        TextSpan(text: "By ticking this box, you agree to our",
                            style: TextStyle(
                                color: Color.fromARGB(255, 167, 167, 167),
                            fontSize: 12)),
                        TextSpan(text: "Terms and conditions\nand private policy",
                            style: TextStyle(
                              color: Color.fromARGB(255, 235, 188, 46),
                            fontSize: 12))
                      ]
                  )
                  ),
              ]),
            ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 19, right: 19),
                  child: OutlinedButton(onPressed: (){
                  },
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4))),
                          backgroundColor: MaterialStateColor.resolveWith((states)
                          => const Color.fromARGB(255, 5, 96, 250))),
                      child: const Text("Sign Up",
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
                        Navigator.of(context).pop();
                    },
                    child: RichText(text: const TextSpan(
                        children: [
                          TextSpan(text: "Already have an account?",
                              style: TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
                          TextSpan(text: "Sign In",
                              style: TextStyle(color: Color.fromARGB(255, 5, 96, 250)))
                        ]
                    )
                    ),
                  ),
                ),
              )
          ]
        )
      )
    );
  }
}