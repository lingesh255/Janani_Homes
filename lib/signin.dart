import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';
import 'signup.dart';
import 'package:auth_buttons/auth_buttons.dart'
    show GoogleAuthButton, AuthButtonStyle, FacebookAuthButton;

// ignore: camel_case_types
class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}

// ignore: camel_case_types
class _signinState extends State<signin> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _isEmail = false;
  Icon iconvisi = Icon(
    Icons.visibility,
    color: Colors.black54,
  );
  Icon iconvisioff = Icon(
    Icons.visibility_off,
    color: Colors.black54,
  );
  Icon showicon = Icon(
    Icons.visibility,
    color: Colors.black54,
  );
  String email, password;
  final emailid = TextEditingController();
  final passid = TextEditingController();

  bool validateStructure(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#_\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }

  @override
  void dispose() {
    emailid.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: new Scaffold(
        //resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 32),
                            child: SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 20, 40, 20),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/jhlogo.jpg'),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "LOGIN",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 25,
                                              color: Colors.black54),
                                        ),
                                        Text(
                                          "Login into your account to continue.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 8.0),
                            child: Container(
                              child: TextFormField(
                                onChanged: (email) {
                                  email = emailid.text;
                                },
                                validator: (email) {
                                  _isEmail = EmailValidator.validate(email);

                                  if (!_isEmail) {
                                    if (email.isEmpty) {
                                      return "Please enter an email address";
                                    }
                                    return "Please enter a valid email address";
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  fillColor: Colors.black,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black54, width: 0.2)),
                                  hintText: "Email",
                                  prefixIcon: Icon(
                                    Icons.mail,
                                    color: Colors.black54,
                                  ),
                                ),
                                controller: emailid,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(32, 8, 32, 2),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: <Widget>[
                                TextFormField(
                                  onChanged: (password) {
                                    password = passid.text;
                                  },
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black54, width: 0.2),
                                    ),
                                    hintText: "Password",
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  controller: passid,
                                ),
                                IconButton(
                                  icon: showicon,
                                  onPressed: () {
                                    _toggle();
                                    if (_obscureText) {
                                      showicon = iconvisi;
                                    } else {
                                      showicon = iconvisioff;
                                    }
                                  },
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(32, 2, 32.0, 25),
                            child: SizedBox(
                              width: double.infinity,
                              child: new RichText(
                                textAlign: TextAlign.right,
                                text: TextSpan(
                                  children: [
                                    new TextSpan(
                                      text: "Forgot password?",
                                      style: new TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blueAccent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(32.0, 0, 32.0, 10),
                            child: SizedBox(
                              width: double.infinity,
                              height: 45,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black87),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  print(_isEmail);
                                  print("Signed in");
                                  email = emailid.text;
                                  password = passid.text;
                                  print("Email: " +
                                      email +
                                      "\n" +
                                      "Password: " +
                                      password);
                                  if (_formKey.currentState.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Signing in')));
                                  }
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(32.0, 20, 32.0, 20),
                            child: SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GoogleAuthButton(
                                    onPressed: () {},
                                    textStyle: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.50,
                                    ),

                                    text: 'Google',

                                    darkMode: false,
                                    buttonColor: Colors.white,
                                    height: 43,
                                    width: 137,
                                    style: AuthButtonStyle.secondary,
                                    borderRadius: 5,
                                    //iconStyle: AuthIconStyle.secondary,// if true second example
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        new TextSpan(
                                            text: 'or',
                                            style: TextStyle(
                                                color: Colors.black54))
                                      ],
                                    ),
                                  ),
                                  FacebookAuthButton(
                                    onPressed: () {},
                                    text: 'Facebook',
                                    textStyle: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16),
                                    darkMode: false,
                                    height: 43.2,
                                    width: 162,
                                    //buttonColor: Colors.redAccent,
                                    //style: AuthButtonStyle.secondary,
                                    borderRadius: 5,
                                    //iconStyle: AuthIconStyle.secondary,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            indent: 50,
                            endIndent: 50,
                            thickness: 2,
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: new RichText(
                                text: new TextSpan(
                                  children: [
                                    new TextSpan(
                                        text: "Don't have an account?  ",
                                        style: new TextStyle(
                                            color: Colors.black54)),
                                    new TextSpan(
                                      text: "Sign up here",
                                      style: new TextStyle(
                                          color: Colors.blueAccent,
                                          decoration: TextDecoration.underline),
                                      recognizer: new TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => SignUp(),
                                            ),
                                          );
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                    child: Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: new RichText(
                          text: new TextSpan(
                            children: [
                              new TextSpan(
                                  text: "2021 Janani Homes",
                                  style: TextStyle(color: Colors.black45))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
