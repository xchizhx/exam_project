import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtry2ses_2/home.dart';

class Sign_up extends StatefulWidget {
  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 88, left: 19),
              child: Text("Create an account",
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 19),
              child: Text("Complete the sign up process to get started",
                style: Theme.of(context).textTheme.titleMedium
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24, left: 19),
              child: Text("Full name",
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
                  child: Text("Ivanov Ivan",
                    style: TextStyle(
                        color: Color.fromARGB(255, 167, 167, 167)
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24, left: 19),
              child: Text("Phone number",
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
                  child: Text("+7 (999) 999 99-99",
                    style: TextStyle(
                        color: Color.fromARGB(255, 167, 167, 167)
                    ),
                  ),
                ),
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
            Padding(
              padding: EdgeInsets.only(top: 24, left: 19),
              child: Text("Remember Password",
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
                      value: isChecked, onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  })
                ],),
                Padding(
                  padding: EdgeInsets.only(right: 19),
                  child: Row(
                    children: [
                      RichText(text: TextSpan(
                          children: [
                            TextSpan(
                                text: "By ticking this box, you agree to our",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 167, 167, 167),
                                    fontSize: 12)),
                            TextSpan(
                                text: " Terms and conditions\nand private policy",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 233, 188, 46),
                                    fontSize: 12
                                ))
                          ])),
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 19, right: 19),
                        child: FilledButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return Home();
                                  }));
                            },
                            child: Text("Login",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)
                              ),
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            4))),
                                backgroundColor: MaterialStateProperty
                                    .resolveWith((states) =>
                                    Color.fromARGB(255, 5, 96, 250)))
                        ),),
                    ),
                  ]),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 20, bottom: 24),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
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
      ),
    );
  }
}