import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                      width: 50,
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
                  height: 30,
                ),
                Text(
                  "Create Account Now!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Fullname",
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
                  height: 30,
                ),
                Text(
                  "Email",
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
                  height: 30,
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
                SizedBox(
                  height: 30,
                ),
                Text(
                  "PhoneNo",
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
                  height: 35,
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
                      'SignUp',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18, // You can adjust the font size if needed
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
