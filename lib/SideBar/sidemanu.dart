import 'package:flutter/material.dart';
import 'package:testapps/BottomTab/bottab.dart';
import 'package:testapps/Profile/profile.dart';
class SideManu extends StatefulWidget {

 @override
  State<SideManu> createState() => _SideManuState();
}

class _SideManuState extends State<SideManu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.cyan,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              child: Text('HOME APP',style: TextStyle(color: Colors.black,fontSize: 25)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(1.0),
                  bottomRight: Radius.circular(1.0),
                ),
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.fill,image: AssetImage('assets/bg.jpeg')
                )
              ),
          ),

          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text("home"),
            onTap: () => {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BotTab(selectedIndex: 0)))
            },
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("profile"),
            onTap: () => {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profile()))
            },
          )
          // ListTile(
          //   leading: Icon(Icons.person_pin_outlined),
          //   title: Text("contact"),
          //   onTap: () => {
          //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home())
          //   },
          // )
          // ListTile(
          //   leading: Icon(Icons.pending_actions_rounded),
          //   title: Text("pending"),
          //   onTap: () => {
          //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home())
          //   },
          // )
        ],
      ),
    );
  }
}

