import 'dart:math';

import 'package:flutter/material.dart';
import 'package:progect_iti/login/login.dart';
import 'package:progect_iti/pages/about.dart';
import '../screens/notes.dart';
import 'package:progect_iti/screens/tasks_screen.dart';
class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 2,
      child: Scaffold(

        drawer: Drawer(

          child: ListView(
            children: [

              UserAccountsDrawerHeader(
                accountEmail:Text("team"),

                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Screenshot a.png"),
                ),

              ),

              Card(
                color: Colors.white,

                child: ListTile(
                    title: Text("About us"),
                    trailing: Icon(Icons.settings),
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext con){
                              return About();

                            }

                        ),


                      );

                    }

                ),

              ),
              Card(
                color: Colors.white,

                child: ListTile(
                    title: Text("LogOut"),
                    trailing: Icon(Icons.info),
                    onTap: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (BuildContext con){
                              return Login("s@gmail.com","1111");

                            }

                        ),


                      );

                    }

                ),

              ),

            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text('Today Do',
              style:TextStyle(
                color: Colors.blue,
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),

            ),
          ),
          bottom:TabBar(
            labelColor: Colors.red,
            indicatorColor: Colors.red,


            tabs: [
              Tab(
                icon: Icon(Icons.playlist_add_check),
                text:'To Do list',

              ),

              Tab(
                icon: Icon(Icons.note_add_rounded),
                text:'Notes',
              ),

            ],
          ),
          iconTheme: IconThemeData(color: Colors.red),

        ),
        body: TabBarView(
          children: [
            TaskScreen(),
            Notes(),

          ],
        ),
      ),

    );
  }


}