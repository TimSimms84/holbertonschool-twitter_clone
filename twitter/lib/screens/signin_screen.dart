// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/widgets/entry_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Sign In', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomEntryField(
                  hint: 'Enter email',
                  controller: _emailController,
                ),
                CustomEntryField(
                  hint: 'Enter password',
                  controller: _passwordController,
                  isPassword: true,
                ),
                const SizedBox(height: 20),
                CustomFlatButton(
                  label: 'Submit',
                  onPressed: () {
                    print(_emailController.text);
                    print(_passwordController.text);
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                      // context,
                      // MaterialPageRoute(builder: (context) => SignUp()),
                    // );
                  },
                  child: Text('Sign up',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.blue,
                          )),
                ),
                const SizedBox(height: 10),
                Text('Forgot password?',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.blue,
                        ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: SignIn(),
    ),
  );
}
