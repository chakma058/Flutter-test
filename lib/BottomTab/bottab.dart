import 'package:flutter/material.dart';
import 'package:testapps/Home/home.dart';
import 'package:testapps/Profile/profile.dart';

class BotTab extends StatefulWidget {
  int selectedIndex =0;
BotTab({required this.selectedIndex});

  @override
  State<BotTab> createState() => _BotTabState();
}

class _BotTabState extends State<BotTab> {
  int currentIndex =0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final List<Widget> page=[
    Home(),
    Profile()
  ];
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    Widget currentScreen= currentIndex == 0 ? Home() :  Profile();
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child:  Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 50,
                    onPressed: (){
                      setState(() {
                        currentScreen= Home();
                        currentIndex= 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_filled,
                          color: currentIndex== 0 ?  Colors.amber : Colors.lightGreenAccent,
                        ),
                        Text(
                            "home",
                            style: TextStyle(color: currentIndex==0 ? Colors.pink : Colors.grey)
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 50,
                    onPressed: (){
                      setState(() {
                        currentScreen= Profile();
                        currentIndex= 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_filled,
                          color: currentIndex== 1 ?  Colors.amber : Colors.lightGreenAccent,
                        ),
                        Text(
                            "Index",
                            style: TextStyle(color: currentIndex==1 ? Colors.pink : Colors.grey)
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
