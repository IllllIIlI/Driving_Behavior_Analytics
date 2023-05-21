import 'package:driving/bottom_bar.dart';
import 'package:flutter/material.dart';

class my_page extends StatelessWidget {
  const my_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color(0xffC5DFE4),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width/10*8,
              child: ListView(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/10*3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.account_circle_rounded,size: 100,),
                        Text("User_name",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                        Text("User_email",style: TextStyle(color: Colors.grey,fontSize: 15)),
                        MaterialButton(
                          child: Container(
                              width: MediaQuery.of(context).size.width/100*25,
                            height: MediaQuery.of(context).size.height/100*3,
                            decoration: BoxDecoration(
                              color: Color(0xffC5DFE4),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(child: Text("Edit Profile",style: TextStyle(color: Colors.white),)),
                          ),
                            onPressed: (){}
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: MediaQuery.of(context).size.height/100*10,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: MediaQuery.of(context).size.height/2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(alignment: Alignment.centerLeft,child: Text("서비스 설정",style: TextStyle(color: Colors.grey[600]),)),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height/100*7,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 1,color: Colors.black)
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.settings_applications_outlined,size: 35,),
                                  Text("설정",style: TextStyle(fontSize: 23),)
                                ],
                              ),
                              Icon(Icons.navigate_next,size: 35),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height/100*7,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1,color: Colors.black)
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.settings_applications_outlined,size: 35,),
                                  Text("설정",style: TextStyle(fontSize: 23),)
                                ],
                              ),
                              Icon(Icons.navigate_next,size: 35),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height/100*7,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1,color: Colors.black)
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.settings_applications_outlined,size: 35,),
                                  Text("설정",style: TextStyle(fontSize: 23),)
                                ],
                              ),
                              Icon(Icons.navigate_next,size: 35),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height/100*7,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1,color: Colors.black)
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.settings_applications_outlined,size: 35,),
                                  Text("설정",style: TextStyle(fontSize: 23),)
                                ],
                              ),
                              Icon(Icons.navigate_next,size: 35),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height/100*7,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1,color: Colors.black)
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.settings_applications_outlined,size: 35,),
                                  Text("설정",style: TextStyle(fontSize: 23),)
                                ],
                              ),
                              Icon(Icons.navigate_next,size: 35),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height/100*7,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1,color: Colors.black)
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.settings_applications_outlined,size: 35,),
                                  Text("설정",style: TextStyle(fontSize: 23),)
                                ],
                              ),
                              Icon(Icons.navigate_next,size: 35),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ),
        bottomNavigationBar: bottom_bar(),
      ),
    );
  }
}
