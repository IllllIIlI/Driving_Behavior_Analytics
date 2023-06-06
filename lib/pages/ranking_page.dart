import 'package:flutter/material.dart';

class ranking_page extends StatelessWidget {
  const ranking_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_left,
              color: Colors.black,
              size: MediaQuery.of(context).size.height / 15,
            ),
          ),
          elevation: 0,
          backgroundColor: Color(0xffC5DFE4),
          title: Text("랭킹",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height / 35)),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset("assets/lanking.png"),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 10 * 7,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1, color: Colors.black)),
                child: Column(
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Align(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "랭킹",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 20),
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                      flex: 15,
                    ),
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                        ),
                        child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: MediaQuery.of(context).size.height /
                                    100 *
                                    5,
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "${index + 1}",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Icon(Icons.account_circle_rounded),
                                          Text(
                                            "User_name",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "User_score%",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      flex: 85,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
