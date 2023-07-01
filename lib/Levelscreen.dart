import 'package:flutter/material.dart';

class Levelscreen extends StatefulWidget {
  const Levelscreen({Key? key}) : super(key: key);

  @override
  State<Levelscreen> createState() => _LevelscreenState();
}

class _LevelscreenState extends State<Levelscreen> {
  List<String> imagelist = [
    "assets/images/tier.png",
    "assets/images/tier.png",
    "assets/images/tier.png",
    "assets/images/tier.png",
  ];
  List<String> buttonlist = [
    "Bronze",
    "Silver",
    "Gold",
    "Diamond",
  ];
  List color = [
    Color(0xFFCD7F32),
    Color(0xFFC0C0C0),
    Color(0xFFCCBA78),
    Color(0xFFB9F2FF),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LEVELS',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Caprasimo',
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xFFCCBA78),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: imagelist.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.black,
                  elevation: 30,
                  child: Column(
                    children: [
                      Image.asset(imagelist[index]),
                      ElevatedButton(
                        onPressed: () {
                          if (buttonlist[index] == 'Bronze') {
                            // print('bronze-------');
                            Navigator.pushNamed(context, '/quiz');
                          } else if (buttonlist[index] == 'Silver') {
                            print('Silver-------');
                          } else if (buttonlist[index] == 'Gold') {
                            print('Gold-------');
                          } else {
                            print('Diamond-------');
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(color[index]),
                        ),
                        child: Text(
                          buttonlist[index],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text(
              //   'Select your tier',
              //   style: TextStyle(
              //     color: Color(0xFFCCBA78),
              //   ),
              // ),
              Image.asset(
                "assets/images/bell.gif",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
