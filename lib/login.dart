import 'package:flutter/material.dart';
import 'package:login_signup/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isChecked = false; // State variable to keep track of checkbox status

  void _handleCheckboxChanged(bool? value) {
    setState(() {
      _isChecked = value ?? false; // Update the state with the new value
    });
  }

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: hieght * hieght,
        width: width * width,
        color: Color.fromARGB(255, 3, 38, 99),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "CodeChap.in",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Expanded(
                      child: Icon(
                        Icons.list_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Text(
                  "Login To Continue",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "UserName",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                  height: hieght * 0.06,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white, // Container background color
                    borderRadius:
                        BorderRadius.circular(25), // Circular border radius
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      //hintText: 'Enter your text here',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Container(
                  height: hieght * 0.06,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white, // Container background color
                    borderRadius:
                        BorderRadius.circular(25), // Circular border radius
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      //hintText: 'Enter your text here',
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                        fillColor: MaterialStateProperty.all(Colors.white),
                        checkColor: Colors.black,
                        value: _isChecked,
                        onChanged: _handleCheckboxChanged),
                    Text(
                      'Remeber me',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                SizedBox(
                  height: hieght * 0.06,
                  width: width * 0.9,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                      print('Login button pressed');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(241, 183, 117, 3)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18, // You can adjust the font size if needed
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Text(
                        'Signup',
                        style: TextStyle(
                          color: Color.fromARGB(255, 223, 191, 98),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
