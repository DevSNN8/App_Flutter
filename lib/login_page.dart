import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _fromkey = GlobalKey<FormState>();
  final _navigator = GlobalKey<NavigatorState>();
  final _username = TextEditingController();
  final _password = TextEditingController();

  Future<void> _login() async {
    final url = Uri.parse('https://www.melivecode.com/api/login');
    final header = {'Content-type': 'application/json'};
    final body =
        jsonEncode({'username': _username.text, 'password': _password.text});

    final response = await http.post(url, headers: header, body: body);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      _showSnackbar(jsonResponse['message']);
    }
  }

  void _showSnackbar(String message) {
    final snackBar =
        SnackBar(content: Text(message), duration: Duration(seconds: 2));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigator,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Form(
                        key: _fromkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/NASA_logo.svg/1224px-NASA_logo.svg.png',
                              width: 150,
                              height: 150,
                            ),
                            TextFormField(
                              controller: _username,
                              decoration:
                                  InputDecoration(labelText: 'User Name'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your username';
                                }
                              },
                            ),
                            TextFormField(
                              controller: _password,
                              obscureText: true,
                              decoration:
                                  InputDecoration(labelText: 'Password'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your Passwword';
                                }
                                return null;
                              },
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  if (_fromkey.currentState!.validate()) {
                                    _login();
                                  }
                                },
                                child: Text('Login'))
                          ],
                        ),
                      ),
                    ),
                  ),
                ));

        ;
      },
    );
  }
}
