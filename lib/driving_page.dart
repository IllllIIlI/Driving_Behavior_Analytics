import 'package:driving/driving_on_page.dart';
import 'package:flutter/material.dart';

var current_hp=100;

class driving_page extends StatefulWidget {
  const driving_page({Key? key}) : super(key: key);

  @override
  State<driving_page> createState() => _driving_pageState();
}

class _driving_pageState extends State<driving_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: MaterialButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_left,color: Colors.black,size: MediaQuery.of(context).size.height/15,),
          ),
          actions: [
            MaterialButton(
              child: Icon(Icons.next_plan),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>driving_on_page()));
                }
            )
          ],
          elevation: 0,
          backgroundColor: Color(0xffC5DFE4),
          title: Text("나의 운전 점수", style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.height/35)),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(onPressed: (){
                setState(() {
                  current_hp--;
                });
              }),
              if(current_hp>=75)...[
                Text("잘 하고 있습니다!",style: TextStyle(fontSize: 30),),
                Stack(
                  children: [
                    Image.asset("assets/tofu_100.jpg"),
                    Positioned(
                      top: 20,
                      left: MediaQuery.of(context).size.width/100*40,
                      child: Text("${current_hp}%",style: TextStyle(fontSize: 25),),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width/10*7,
                  height: MediaQuery.of(context).size.height/10*2,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.car_crash,size: 40,),
                            Text("과속 5회")
                          ],
                        ),
                      );
                    },
                    padding: EdgeInsets.only(left: 20),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ]
              else if(current_hp>=50)...[
                Text("주의가 필요합니다.",style: TextStyle(fontSize: 30),),
                Stack(
                  children: [
                    Image.asset("assets/tofu_75.jpg"),
                    Positioned(
                      top: 20,
                      left: MediaQuery.of(context).size.width/100*40,
                      child: Text("${current_hp}%",style: TextStyle(fontSize: 25),),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width/10*7,
                  height: MediaQuery.of(context).size.height/10*2,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.car_crash,size: 40,),
                            Text("과속 5회")
                          ],
                        ),
                      );
                    },
                    padding: EdgeInsets.only(left: 20),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ]
              else if(current_hp>=25)...[
                  Text("조심해 주세요!!",style: TextStyle(fontSize: 30),),
                  Stack(
                    children: [
                      Image.asset("assets/tofu_50.jpg"),
                      Positioned(
                        top: 20,
                        left: MediaQuery.of(context).size.width/100*40,
                        child: Text("${current_hp}%",style: TextStyle(fontSize: 25),),
                      )
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/10*7,
                    height: MediaQuery.of(context).size.height/10*2,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context,int index){
                        return Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.car_crash,size: 40,),
                              Text("과속 5회")
                            ],
                          ),
                        );
                      },
                      padding: EdgeInsets.only(left: 20),
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ]
              else if(current_hp>0)...[
                    Text("위험합니다!",style: TextStyle(fontSize: 30),),
                    Stack(
                      children: [
                        Image.asset("assets/tofu_25.jpg"),
                        Positioned(
                          top: 20,
                          left: MediaQuery.of(context).size.width/100*40,
                          child: Text("${current_hp}%",style: TextStyle(fontSize: 25),),
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/10*7,
                      height: MediaQuery.of(context).size.height/10*2,
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (BuildContext context,int index){
                          return Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.car_crash,size: 40,),
                                Text("과속 5회")
                              ],
                            ),
                          );
                        },
                        padding: EdgeInsets.only(left: 20),
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ]
              else...[
                      Text("다시 배우세요!",style: TextStyle(fontSize: 30),),
                      Stack(
                        children: [
                          Image.asset("assets/tofu_0.jpg",),
                          Positioned(
                            top: 20,
                            left: MediaQuery.of(context).size.width/100*40,
                            child: Text("${current_hp}%",style: TextStyle(fontSize: 25),),
                          )
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/10*7,
                        height: MediaQuery.of(context).size.height/10*2,
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context,int index){
                            return Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.car_crash,size: 40,),
                                  Text("과속 5회")
                                ],
                              ),
                            );
                          },
                          padding: EdgeInsets.only(left: 20),
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ]
            ],
          ),
        ),
      ),
    );
  }
}
