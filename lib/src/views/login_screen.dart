import 'package:flutter/material.dart';
import '../config/login_config.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(LoginConfiguration
          .LOGIN_CONTAINER_ALL_MARGIN), //LoginConfiguration.loginContainerAllMrgin),
      child: Form(
        child: Column(
          children: <Widget>[
            emailTextFormField(),
            passwordTextFormField(),
            containerSpacing (),
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
      // keyboardType: TextInputType.emailAddress,
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
    );
  }

  Widget containerSpacing () {
    return Container(margin: EdgeInsets.only(bottom: LoginConfiguration.PASSWORD_TEXT_FIELD_MARGIN_BOTTOM));
  }

  Widget submitButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue, // Background color
        ),
        onPressed: () {},
        child: Text(LoginConfiguration.SUBMIT_BUTTON_TEXT));
  }
}
