import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1 / 6,
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 100,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Welcome to fashion Daily",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Register",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 300,
              ),
              Text(
                "Help?",
                style: TextStyle(fontSize: 8, color: Colors.blue),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your Email',
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Select Phone Number',
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Your Password',
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        "Register",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  )),
              SizedBox(
                height: 50,
              ),
              Text("--OR--"),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(
                              'asset/google.jpg',
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Sign in by Google")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                " Has any Account?",
                style: TextStyle(fontSize: 9),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  "Sign In Here ",
                  style: TextStyle(fontSize: 12, color: Colors.blue),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
