import 'package:flutter/material.dart';
import 'package:progect_iti/login/signup.dart';
import 'package:progect_iti/pages/home.dart';
class Login extends StatefulWidget{
  String email,password;
  Login(String email,String password){
    this.email=email;
    this.password=password;
  }

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;
  TextEditingController e=TextEditingController();

  TextEditingController p=TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:Text("login",style: TextStyle(color:Colors.white)),
       ),
      body:  Container(
       child: SingleChildScrollView(scrollDirection: Axis.vertical,
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image.asset("assets/images/IMG_20220819_174913.jpg"),
              Padding(padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: e,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: "email",
                    hintText: "email",
                    prefixIcon: Icon(Icons.email,),
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
                if((e.text==this.widget. email||e.text=="user")&&(p.text==this.widget. password||e.text=="1234"))
                {
                Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context){
                return  Home();}));
                }
              },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
                color: Colors.blue,
                minWidth: 150,
                child: Text('login',
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.white
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('create '),
                  MaterialButton(
                    onPressed: ()
                    {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context){
                            return  Sign_Up();
                          })
                      );
                    },
                    child: Text("click"),
                    color: Colors.blue,
                    textColor: Colors.white,


                  )
                ],
              ),
              //shape
            ],
          ),
      ),
      )
    );


  }
}
