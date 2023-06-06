import 'ranking_page.dart';
import 'user_page.dart';
import 'package:flutter/material.dart';
import 'main_page.dart';

class bottom_bar extends StatefulWidget {
  const bottom_bar({Key? key}) : super(key: key);

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                setState(() {
                  currentTap = 0;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => main_page()),
                  );
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentTap == 0
                          ? Color(0xffC5DFE4)
                          : Colors.transparent,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTap == 0 ? Colors.white : Colors.grey,
                        ),
                        Text(
                          '홈',
                          style: TextStyle(
                              color:
                                  currentTap == 0 ? Colors.white : Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ), //홈
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ranking_page()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentTap == 1
                          ? Color(0xffC5DFE4)
                          : Colors.transparent,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.assessment,
                          color: currentTap == 1 ? Colors.white : Colors.grey,
                        ),
                        Text(
                          '랭킹',
                          style: TextStyle(
                              color:
                                  currentTap == 1 ? Colors.white : Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ), //홈
            MaterialButton(
              minWidth: 40,
              onPressed: () {
                setState(() {
                  currentTap = 2;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => user_page()),
                  );
                });
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color:
                      currentTap == 2 ? Color(0xffC5DFE4) : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: currentTap == 2 ? Colors.white : Colors.grey,
                    ),
                    Text(
                      '유저',
                      style: TextStyle(
                          color: currentTap == 2 ? Colors.white : Colors.grey),
                    ),
                  ],
                ),
              ),
            ), //유저
          ],
        ),
      ),
    );
  }
}
