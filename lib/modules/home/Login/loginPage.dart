

import 'package:app/modules/home/Login/signUp.dart';
import 'package:app/modules/home/Login/widget/TextField.dart';
import 'package:app/modules/home/home_page.dart';
import 'package:flutter/material.dart';

class LoginPg extends StatefulWidget {
  LoginPg({
    super.key,
  });

  @override
  State<LoginPg> createState() => _LoginPgState();
}

class _LoginPgState extends State<LoginPg> {
  // final TextEditingController _emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/pokemon_wallpar.jpg')),
      ),
      child: Scaffold(
        
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                child: 
                Padding(
                  padding: const EdgeInsets.only(top: 350, right: 25, left: 25),
                  child: Form(
                    // key: _formKey,
                    child: Column(
                      children: [
                        Image.asset('assets/images/pokemon_splash/pokemon-text.png',
                        height: 100,width: 50,
                        ),
                        SizedBox(height: 250,),
                        BuildTextformField(icon: Icon(Icons.email), text: 'email'),
                        SizedBox(
                          height: 20,
                        ),
                       BuildTextformField(
                           icon: Icon(Icons.lock_open),
                           text: 'Password'),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>( Color.fromARGB(255, 104, 95, 219)),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          },
                          
                          child: Container(
                            
                            child: Text(
                              "  LOGIN  ",
                              style: TextStyle(color: Colors.white),
                            ),
                            
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            )),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Create an account ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
                              },
                              child: Text(
                                "Signup",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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

