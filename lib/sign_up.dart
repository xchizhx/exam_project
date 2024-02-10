import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sign_up extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: EdgeInsets.only(top: 78, left: 19),
                    child: Text("Welcome back",
                      style: TextStyle(
                          color: Color.fromARGB(255, 58, 58, 58),
                          fontSize: 24
                      ),
                    )
                )
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(top: 8, left: 19),
                  child: Text("Fill in your email and password to continue",
                    style: TextStyle(
                        color: Color.fromARGB(255, 167, 167, 167)
                    ),
                  )
              ),
            ),const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 33, left: 19),
                child: Text("Email Address",
                  style: TextStyle(
                      color: Color.fromARGB(255, 167, 167, 167)
                  ),),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 19, right: 19),
                child: Row(
                    children: [
                      Expanded(
                        child:
                        Container(
                          child:
                          Padding(
                            padding: EdgeInsets.only(top: 14, left: 10, bottom: 14),
                            child: Text("***********@mail.com",
                              style: TextStyle(
                                color: Color.fromARGB(255, 167, 167, 167),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(4)),
                              border: Border.all(
                                  color: Color.fromARGB(255, 167, 167, 167))
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 33, left: 19),
                child: Text("Password",
                  style: TextStyle(
                      color: Color.fromARGB(255, 167, 167, 167)
                  ),),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 19, right: 19),
                child: Row(
                    children: [
                      Expanded(
                        child:
                        Container(
                          child:
                          Padding(
                            padding: EdgeInsets.only(top: 14, left: 10, bottom: 14),
                            child: Text("***********",
                              style: TextStyle(
                                color: Color.fromARGB(255, 167, 167, 167),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(4)),
                              border: Border.all(
                                  color: Color.fromARGB(255, 167, 167, 167))
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 33, left: 19),
                child: Text("Email Address",
                  style: TextStyle(
                      color: Color.fromARGB(255, 167, 167, 167)
                  ),),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 19, right: 19),
                child: Row(
                    children: [
                      Expanded(
                        child:
                        Container(
                          child:
                          Padding(
                            padding: EdgeInsets.only(top: 14, left: 10, bottom: 14),
                            child: Text("***********@mail.com",
                              style: TextStyle(
                                color: Color.fromARGB(255, 167, 167, 167),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(4)),
                              border: Border.all(
                                  color: Color.fromARGB(255, 167, 167, 167))
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 33, left: 19),
                child: Text("Email Address",
                  style: TextStyle(
                      color: Color.fromARGB(255, 167, 167, 167)
                  ),),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 19, right: 19),
                child: Row(
                    children: [
                      Expanded(
                        child:
                        Container(
                          child:
                          Padding(
                            padding: EdgeInsets.only(top: 14, left: 10, bottom: 14),
                            child: Text("***********@mail.com",
                              style: TextStyle(
                                color: Color.fromARGB(255, 167, 167, 167),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(4)),
                              border: Border.all(
                                  color: Color.fromARGB(255, 167, 167, 167))
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 33, left: 19),
                child: Text("Email Address",
                  style: TextStyle(
                      color: Color.fromARGB(255, 167, 167, 167)
                  ),),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 19, right: 19),
                child: Row(
                    children: [
                      Expanded(
                        child:
                        Container(
                          child:
                          Padding(
                            padding: EdgeInsets.only(top: 14, left: 10, bottom: 14),
                            child: Text("***********@mail.com",
                              style: TextStyle(
                                color: Color.fromARGB(255, 167, 167, 167),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(4)),
                              border: Border.all(
                                  color: Color.fromARGB(255, 167, 167, 167))
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 24, left: 19),
                  child:
                  Row(children: [
                    Checkbox(
                        side: const BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 167, 167, 167)
                        ),
                        value: isChecked, onChanged: (bool? value){
                      setState(() {
                        isChecked = value!;
                      });
                    })
                  ],),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24, left: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text("Remember password",
                          style: TextStyle(
                              color: Color.fromARGB(255, 167, 167, 167)
                          ),),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Forgot Password?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 5, 96, 250)
                          ),),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 19, right: 19),
                child: Row(
                  children: [
                    Expanded(
                      child: FilledButton(
                        onPressed: (){

                        },
                        child: Text("Login",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states)
                            => Color.fromARGB(255, 5, 96, 250))
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RichText(text: const TextSpan(
                  children: [TextSpan(text: "Not have account?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 167, 167, 167)
                      )
                  ),
                    TextSpan(text: "Sign Up",
                        style: TextStyle(
                            color: Color.fromARGB(255, 5, 96, 250)
                        ))
                  ])
              ),
            ),
          ],
        )
    );
  }

}