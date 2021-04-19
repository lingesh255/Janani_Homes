import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'signin.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';
import 'package:auth_buttons/auth_buttons.dart'
    show GoogleAuthButton, AuthButtonStyle, FacebookAuthButton;

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey1 = GlobalKey<FormState>();
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

  String email, password, username, confirmPassword;

  final userid = TextEditingController();
  final passid = TextEditingController();
  final emailid = TextEditingController();
  final cpassid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey1,
        child: new Scaffold(
          //resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(52, 10, 72, 10),
                          child: Image(
                            image: AssetImage('assets/images/jhlogo.jpg'),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(32, 8, 32, 8),
                              child: SizedBox(
                                width: double.infinity,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "CREATE AN ACCOUNT",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 25,
                                            color: Colors.black54),
                                      ),
                                      Text(
                                        "Sign up to get started.",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black54),
                                      ),
                                    ]),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(32, 8, 32, 8),
                                  child: TextFormField(
                                    onChanged: (username) {
                                      username = userid.text;
                                    },
                                    keyboardType: TextInputType.name,
                                    controller: userid,
                                    decoration: InputDecoration(
                                      hintText: "Username",
                                      fillColor: Colors.black,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.black54,
                                          width: 0.2,
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.account_box_rounded,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(32, 8, 32, 8),
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
                                    controller: emailid,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: "Email ID",
                                      fillColor: Colors.black,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.black54,
                                          width: 0.2,
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.mail_rounded,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(32, 8, 32, 6),
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      TextFormField(
                                        validator: (password) {
                                          if(password.length<8) {
                                            // ignore: unnecessary_statements
                                            return "Password must contain minimum 8 characters";
                                          }
                                          return null;
                                        },
                                        onChanged: (password) {
                                          password = passid.text;
                                        },
                                        controller: passid,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText: _obscureText,
                                        decoration: InputDecoration(
                                          hintText: "Password",
                                          fillColor: Colors.black,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.black54,
                                              width: 0.2,
                                            ),
                                          ),
                                          prefixIcon: Icon(
                                            Icons.lock_rounded,
                                            color: Colors.black54,
                                          ),
                                        ),
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
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(32, 8, 32, 6),
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      TextFormField(
                                        validator: (confirmPassword)
                                        {
                                          if(password!=confirmPassword)
                                            {
                                              return "Passwords does not match.";
                                            }

                                          return null;
                                        },
                                        onChanged: (confirmPassword) {
                                          confirmPassword = cpassid.text;
                                        },
                                        controller: cpassid,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText: _obscureText,
                                        decoration: InputDecoration(
                                          hintText: "Confirm password",
                                          fillColor: Colors.black,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.black54,
                                              width: 0.2,
                                            ),
                                          ),
                                          prefixIcon: Icon(
                                            Icons.lock_rounded,
                                            color: Colors.black54,
                                          ),
                                        ),
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
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(32, 8, 32, 6),
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5)))),
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        username = userid.text;
                                        email = emailid.text;
                                        password = passid.text;
                                        confirmPassword = cpassid.text;
                                        print("Username:" + username);
                                        print("Email:" + email);

                                        print("Password:" + password);

                                        print("Confirm password:" +
                                            confirmPassword);

                                        if (_formKey1.currentState.validate()) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                                  content: Text('Signing in')));
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      new TextSpan(
                                          text: "Or continue with",
                                          style:
                                              TextStyle(color: Colors.black54))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(32, 8, 32, 8),
                                  child: SizedBox(
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
                                          height: 43,
                                          width: 162,
                                          //buttonColor: Colors.redAccent,
                                          //style: AuthButtonStyle.secondary,
                                          borderRadius: 5,
                                          //iconStyle: AuthIconStyle.secondary,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          indent: 50,
                          endIndent: 50,
                          thickness: 2,
                        ),
                        Container(
                          child: SizedBox(
                            width: double.infinity,
                            height: 78,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: new RichText(
                                    text: new TextSpan(
                                      children: [
                                        new TextSpan(
                                            text: "Already have an account?  ",
                                            style: new TextStyle(
                                                color: Colors.black54)),
                                        new TextSpan(
                                          text: "Sign in here",
                                          style: new TextStyle(
                                              color: Colors.blueAccent,
                                              decoration:
                                                  TextDecoration.underline),
                                          recognizer: new TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) => signin(),
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
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
