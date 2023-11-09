
import 'package:app/modules/home/Login/loginPage.dart';
import 'package:app/modules/home/Login/widget/TextField.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 350, right: 25, left: 25),
                  child: Form(
                    // key: _formKey,
                    child: Column(
                      children: [
                        BuildTextformField(icon: Icon(Icons.email), text: 'email'),
                        SizedBox(
                          height: 20,
                        ),
                        BuildTextformField(icon: Icon(Icons.edit), text: 'user name'),
                        SizedBox(
                          height: 20,
                        ),
                        BuildTextformField(icon: Icon(Icons.phone), text: 'phone number'),
                        SizedBox(
                          height: 20,
                        ),
                       BuildTextformField(
                           icon: Icon(Icons.lock_open),
                           text: 'Password'),
                           
                        SizedBox(
                          height: 20,
                          
                        ),
                        BuildTextformField(icon: Icon(Icons.lock), text: 'confirm password'),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.grey),
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
                                  builder: (context) => LoginPg(),
                                ));
                          },
                          child: Text(
                            "  sign up  ",
                            style: TextStyle(color: Colors.white),
                          ),
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


    
