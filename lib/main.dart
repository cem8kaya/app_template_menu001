import 'package:app_template_menu001/screens/pageFive.dart';
import 'package:app_template_menu001/screens/pageFour.dart';
import 'package:app_template_menu001/screens/pageOne.dart';
import 'package:app_template_menu001/screens/pageThree.dart';
import 'package:app_template_menu001/screens/pageTwo.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  //Create all the pages
  final PageOne _listProducts = PageOne();
  final PageTwo _clients = new PageTwo();
  final PageThree _sites = new PageThree();
  final PageFour _flutterpages = new PageFour();
  final PageFive _otherpages = new PageFive();

  Widget _showPage = new PageOne();

  Widget _pageChooser(int page){
    switch (page) {
      case 0:
      return _listProducts;
      break;
      case 1:
      return _clients;
      break;
      case 2:
      return _sites;
      break;
      case 3:
      return _flutterpages;
      break;
      case 4:
      return _otherpages;
      break;
      default:
      return new Container(
        child: new Center(
          child: new Text(
            'No page found by chooser',
            style: new TextStyle(fontSize: 30),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: _page,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(

            child: _showPage,

          ),
        ));
  }
}