import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          height: 75,
          width: 75,
          child: FittedBox(
            child: FloatingActionButton(
              elevation: 0.0,
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, '/home_page');
              },
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                    flex: 7,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Container(
                            color: Color(0xffffa500),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            color: Color(0xffff5c1a),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 50,
                                horizontal: 25,
                              ),
                              child: Text(
                                "Gor",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 36,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Color(0xffffefd2),
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset(
                  "images/characters.png",
                  scale: 0.8,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
