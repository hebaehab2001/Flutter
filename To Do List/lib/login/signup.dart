import 'package:flutter/material.dart';
import 'package:progect_iti/login/login.dart';

class Sign_Up extends StatefulWidget {
  @override
  _Sign_UpState createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  bool _isObscure = true;
  TextEditingController e=TextEditingController();

  TextEditingController p=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("sign up"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Padding(padding: const EdgeInsets.all(8),
            child: TextFormField(
              controller: e,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "email",
                hintText: "email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.all(8),
            child: TextFormField(
              controller: p,
              obscureText: _isObscure,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(Icons.password,),
                labelText: "password",
                hintText: "password",
                suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });}
                ),
              ),
            ),
          ),


          MaterialButton(onPressed: (){
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context){
                  return  Login(e.text,p.text);
                })
            );


          },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2)),
            color: Colors.blue,
            minWidth: 150,
            child: Text('sign in',
              style: TextStyle(
                  fontSize: 21,
                  color: Colors.white
              ),
            ),
          ),

        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}


