import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  final int bottomSelectedIndex;
  final Function bottomTapped;

  const Bottom(
      {Key? key, required this.bottomSelectedIndex, required this.bottomTapped})
      : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  List<BottomNavigationBarItem> buildBottomNavBarItems = [
    const BottomNavigationBarItem(
        label: "Home",
        icon: Icon(Icons.home),
        activeIcon: Icon(Icons.home)
    ),
    const BottomNavigationBarItem(
        label: "D.P.M",
        icon: Icon(Icons.switch_account_sharp),
        activeIcon: Icon(Icons.switch_account_sharp)
    ),
    const BottomNavigationBarItem(
        label: "Search",
        icon: Icon(Icons.search),
        activeIcon: Icon(Icons.search)),
    const BottomNavigationBarItem(
        label: "Training",
        icon: Icon(Icons.eighteen_mp_sharp),
        activeIcon: Icon(Icons.eighteen_mp_sharp)
    ),
    const BottomNavigationBarItem(
        label: "More",
        icon: Icon(Icons.menu),
        activeIcon: Icon(Icons.menu)
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      BottomNavigationBar(
      selectedLabelStyle: TextStyle(
        color: Colors.white
      ),
      type: BottomNavigationBarType.fixed,
      items: buildBottomNavBarItems,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: const IconThemeData(
        color: Colors.white,
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.blueGrey,
      ),
      elevation: 8,
      backgroundColor: Colors.indigo[900],
      currentIndex: widget.bottomSelectedIndex,
      onTap: (index) => widget.bottomTapped(index),
      selectedFontSize: 12,
      unselectedFontSize: 10,
    );
  }
}
