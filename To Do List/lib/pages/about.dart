import 'package:flutter/material.dart';
import 'package:progect_iti/pages/home.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              leading:IconButton(onPressed: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context){
                      return  Home();
                    })
                );
              }, icon: Icon(Icons.arrow_back)) ,


            ),
      body: Container(

      color: Colors.white,

      child: SingleChildScrollView(

        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(35),),


              CircleAvatar(

                backgroundColor: Colors.blue,
                child:
                Icon(Icons.info_outline),
              ),
              SizedBox(height: 30,),
              Text('Organize your tasks with this accessible to-do list template. This to-do list template allows you to mark each items priority, due date, what to do, who to contact, steps in progress, and done fields for each entry. Use this task list template as is, or customize it with a variety of style and color options.',
                maxLines: 100,style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,

                ),
                 textAlign: TextAlign.center,
              ),


          ],
        ),
      ),
    )

        ),

    );
  }
}