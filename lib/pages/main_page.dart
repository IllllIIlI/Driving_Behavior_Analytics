import 'bottom_bar.dart';
import 'driving_page.dart';
import 'package:flutter/material.dart';

var currentTap = 0;

class main_page extends StatelessWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.black,
            size: MediaQuery.of(context).size.height / 20,
          ),
          elevation: 0,
          backgroundColor: Color(0xffC5DFE4),
          title: Text("나의 운전 점수",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height / 35)),
          centerTitle: true,
        ),
        body: Container(
          color: Color(0xffC5DFE4),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 20),
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 10 * 7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 3),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/tofu_75.png",
                            scale: 2,
                          ),
                          Text(
                            "76점",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "현재 랭킹 1407위",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 20),
                  height: MediaQuery.of(context).size.height / 100 * 5,
                  width: MediaQuery.of(context).size.width / 10 * 7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      width: 1,
                    ))),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "이번주 주요 실수",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        )),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width / 10 * 7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.car_crash,
                              size: 40,
                            ),
                            Text("과속 5회")
                          ],
                        ),
                      );
                    },
                    padding: EdgeInsets.only(left: 20),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => driving_page()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 15),
                    width: MediaQuery.of(context).size.width / 10 * 6,
                    height: MediaQuery.of(context).size.height / 100 * 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            blurRadius: 5.0,
                            spreadRadius: 0.0,
                            offset: const Offset(0, 7),
                          )
                        ]),
                    child: Center(child: Text("운전 하러 가기")),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: bottom_bar(),
      ),
    );
  }
}
