import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List lst = [10, 11, 12, 13, 14, 15, 16];
  int selectedIndex = 0;

  Widget LVObject(String slot, String timing, String name, Color clr) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          slot,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                color: clr.withOpacity(0.4),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            timing,
                            style: TextStyle(
                              color: clr,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            name,
                            style: TextStyle(
                              color: clr,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Text(
                          name[0],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: clr,
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 40,
                bottom: 25,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    "Choose date",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 10,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    "April",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 80,
                minWidth: 80,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lst.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        color: selectedIndex == index
                            ? Color(0xff00679c)
                            : Color(0xfff3f3f3),
                        child: Center(
                          child: Text(
                            lst[index].toString(),
                            style: TextStyle(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 40,
                bottom: 25,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    "Choose master",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  LVObject(
                      "9:00", "9:00-10:00", "Abhishek Mahajan", Colors.red),
                  LVObject(
                      "10:00", "10:00-11:00", "Sourabh Pisipati", Colors.blue),
                  LVObject("11:00", "11:00-12:00", "Abhishek Mahajan",
                      Colors.orange),
                  LVObject("12:00", "12:00-13:00", "Rahul Sharma", Colors.red),
                  LVObject("13:00", "13:00-14:00", "Ram Mehta", Colors.blue),
                  LVObject(
                      "14:00", "14:00-15:00", "Shreyas Iyyer", Colors.orange),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
