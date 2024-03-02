

import 'package:flutter/material.dart';
import 'package:uiscreen/home_page.dart';
import 'package:uiscreen/widgets/marketplace.dart';
import 'package:uiscreen/widgets/marketplace/marketplace_screen.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        MyHomePage(),
        MarketplaceScreen(),
        MarketplaceScreen()
      ][currentIndex],

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
        onPressed: (){
          setState(() {
            currentIndex = 1;
          });
        },
        child: Image.asset('assets/images/botface.png',
        height: 40.0,
        )
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        height: 60,
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 8,
        elevation: 0.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              onTap: (){
                setState(() {
                  currentIndex = 0;
                });
              },
              child: Column(
                children: [
                  Image.asset("assets/images/home-filled.png",
                  height: 20.0,
                  ),
                  Text('Home',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Color(0xff7D23E0)
                  ),
                  )
                ],
              ),
              ),
            InkWell(
              onTap: (){
                setState(() {
                  currentIndex = 2;
                });
              },
              child: Column(
                children: [
                  Image.asset("assets/images/marketplace.png",
                    height: 20.0,
                  ),
                  Text('Marketplace',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Color(0xffa7a8a8)
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
