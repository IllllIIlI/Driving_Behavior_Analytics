import 'package:flutter/material.dart';

class driving_on_page extends StatelessWidget {
  const driving_on_page({Key? key}) : super(key: key);

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
          elevation: 0,
          backgroundColor: Color(0xffC5DFE4),
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xffC5DFE4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height/10*3,
                  child: Image.asset("assets/logo.png",scale: 1.5,)
              ),
              Text("운행중",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
              Icon(Icons.drive_eta,size: 200,),
              Text("운행에 집중해 주세요",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700))
            ],
          ),
        ),
      ),
    );
  }
}
