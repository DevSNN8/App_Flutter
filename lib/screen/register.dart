import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/profile.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(email: email, password: password);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'E-mail',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextField(
                        keyboardType: TextInputType.emailAddress,
                        onSubmitted: (String email) {
                          profile.email = email;
                        }),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextField(
                      obscureText: true,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: 25),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
