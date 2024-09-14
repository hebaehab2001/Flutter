import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  TextEditingController e=TextEditingController();
  TextEditingController p=TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
              obscureText: true,
              controller: p,

              onChanged: (c){
                print(c);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

                labelText: "password",
                hintText: "password",
                suffixIcon: Icon(Icons.remove_red_eye),


                prefixIcon: Icon(Icons.password),
              ),
            ),
          ),

          MaterialButton(onPressed: (){
            print('email is ${e.text}');
            print('pass is ${p.text}');

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('create '),
              TextButton(onPressed: (){}, child: Text('click here'))
            ],
          ),
          //shape
        ],
      ),
    );

  }
}