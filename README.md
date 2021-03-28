# app_template_menu001

A Flutter package for easy implementation of curved navigation bar.

dependencies:
  curved_navigation_bar: ^0.3.7 #latest version


Attributes 
items: List of Widgets
index: index of NavigationBar, can be used to change current index or to set initial index
color: Color of NavigationBar, default Colors.white
buttonBackgroundColor: background color of floating button, default same as color attribute
backgroundColor: Color of NavigationBar's background, default Colors.blueAccent
onTap: Function handling taps on items
animationCurve: Curves interpolating button change animation, default Curves.easeOutCubic
animationDuration: Duration of button change animation, default Duration(milliseconds: 600)
height: Height of NavigationBar, min 0.0, max 75.0
letIndexChange: Function which takes page index as argument and returns bool. If function returns false then page is not changed on button tap. It returns true by default\