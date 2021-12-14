import 'package:flutter/material.dart';
import '../config/login_config.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(LoginConfiguration
          .LOGIN_CONTAINER_ALL_MARGIN), //LoginConfiguration.loginContainerAllMrgin),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailTextFormField(),
            passwordTextFormField(),
            containerSpacing(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: LoginConfiguration.EMAIL_TEXT_FIELD_LABEL_TEXT,
        hintText: LoginConfiguration.EMAIL_TEXT_FIELD_HINT_TEXT,
      ),
      validator: (value) {
        //return null if valid
        //else a string of issue
        if (!value!.contains('@')) {
          return LoginConfiguration.EMAIL_TEXT_FIELD_VALIDATOR_TEXT;
        }
        return null;
      },
      onSaved: (value) {
        email = value!;
      },

    );
  }

  Widget passwordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: LoginConfiguration.PASSWORD_TEXT_FIELD_LABEL_TEXT,
        hintText: LoginConfiguration.PASSWORD_TEXT_FIELD_HINT_TEXT,
      ),
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      validator: (value) {
        //return null if valid
        //else a string of issue
        if (value!.length < 4) {
          return LoginConfiguration.PASSWORD_TEXT_FIELD_VALIDATOR_TEXT;
        }
        return null;
      },
      onSaved: (value) {
        password = value!;
      },
    );
  }

  Widget containerSpacing() {
    return Container(
        margin: EdgeInsets.only(
            bottom: LoginConfiguration.PASSWORD_TEXT_FIELD_MARGIN_BOTTOM));
  }

  Widget submitButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blue, // Background color
      ),
      child: Text(LoginConfiguration.SUBMIT_BUTTON_TEXT),
      onPressed: () {
        //Validate does show the criteria how it will validate the components
        //Validatorsin the textfields
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          //take both email and password and send it to the API
          print('Email: $email and Password: $password');
        }
      },
    );
  }
}
