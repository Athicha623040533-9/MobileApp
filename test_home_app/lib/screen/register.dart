import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:email_validator/email_validator.dart';
// import 'package:form_field_validator/form_field_validator.dart';
import '/model/profile.dart';
import 'home.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile();
  // final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'E-mail',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? 'Enter a valid E-mail'
                            : null,
                    onSaved: (email) {
                      profile.email = email!;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter E-mail',
                    ),
                  ),
                ),
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value != null) {
                        return 'Enter password';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (password) {
                      profile.password = password!;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                SizedBox(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: ElevatedButton(
                    child: const Text("Register"),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(35)),
                    onPressed: () {
                      final isValidForm = formKey.currentState!.validate();
                      if (isValidForm) {}
                      formKey.currentState!.save();
                      print('email = ${profile.email} and ${profile.password}');
                      formKey.currentState!.reset();
                    },
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
