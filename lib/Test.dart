import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

TextEditingController email = TextEditingController();
TextEditingController nationalid = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController username = TextEditingController();
TextEditingController Phone = TextEditingController();
String? Email;
String? Password;
GlobalKey<FormState> formKay = GlobalKey<FormState>();

class _signUpState extends State<signUp> {
  singUp() async {
    var formData = formKay!.currentState!;

    if (formData!.validate()) {
      formData!.save();
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: Email!,
          password: Password!,
        );
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          AwesomeDialog(
              context: context,
              title: "Error",
              body: Text("password is to week"))
            ..show();
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          AwesomeDialog(
              context: context,
              title: "Error",
              body: Text("The account already exists for that email."))
            ..show();

          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    } else {
      return;
    }
  }

  GlobalKey<FormState> formKay = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white30,
          elevation: 0.0,
          title: const Text(
            'Sign Up',
            style: TextStyle(color: Colors.grey, fontSize: 25),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: formKay,
            child: ListView(children: [
              Text(
                'Journey Journal',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.orange[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 30,
              ),
              CustomTextFormAuth(
                valid: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password can be not empty';
                  } else if (value.length < 6) {
                    return 'password must at lest 6 character';
                  } else {
                    return null;
                  }
                },
                mycontroller: username,
                hinttext: 'Enter Your Username',
                iconData: Icons.person,
                labeltext: 'Username',
              ),
              //Email
              CustomTextFormAuth(
                valid: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email can be not empty';
                  } else if (!value.contains('@gmail.com')) {
                    return 'Email must contain @gmail.com';
                  } else {
                    return null;
                  }
                },
                mycontroller: email,
                onsaved: (p0) {
                  Email = p0;
                },
                hinttext: 'Enter Your Email',
                iconData: Icons.email_outlined,
                labeltext: 'Email',
              ),

              CustomTextFormAuth(
                valid: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password can be not empty';
                  } else if (value.length < 6) {
                    return 'password must at lest 6 character';
                  } else {
                    return null;
                  }
                },
                mycontroller: nationalid,
                hinttext: 'Your ID',
                iconData: Icons.card_membership_outlined,
                labeltext: 'National ID ',
              ),
              CustomTextFormAuth(
                mycontroller: Phone,
                hinttext: 'Enter Your Phone',
                iconData: Icons.phone_android_outlined,
                labeltext: 'Phone',
              ),
              CustomTextFormAuth(
                valid: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password can be not empty';
                  } else if (value.length < 6) {
                    return 'password must at lest 6 character';
                  } else {
                    return null;
                  }
                },
                onsaved: (p0) {
                  Password != p0;
                },
                mycontroller: password,
                hinttext: 'Enter Your Password',
                iconData: Icons.lock_outline,
                labeltext: 'Password ',
              ),
              Text(
                'Forget Password',
                textAlign: TextAlign.end,
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              CustomButtonAuth(
                text: 'Sign Up',
                onPressed: () async {
                  print('===============');
                  await singUp();
                  print('===============');
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(' have an account ?'),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.orange[900],
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ));
  }
}

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?)? valid;
  final bool? obscureText;
  final void Function()? onTapIcon;
  final Function(String?)? onsaved;

  const CustomTextFormAuth({
    Key? key,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.mycontroller,
    this.valid,
    this.obscureText,
    this.onTapIcon,
    this.onsaved,
  }) : super(key: key);

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        onSaved: onsaved,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false ? false : true,
        validator: valid,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Text(
              labeltext,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            suffixIcon: InkWell(
              child: Icon(iconData, color: Colors.orange[900]),
              onTap: onTapIcon,
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))),
      ),
    );
  }
}

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomButtonAuth({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 12),
        onPressed: onPressed,
        color: Colors.orange[900],
        textColor: Colors.white,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
