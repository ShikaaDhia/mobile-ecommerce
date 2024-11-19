import 'package:floapp/consts.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}
                                      // lambang generic
class _BottomNavBarState
  extends State<BottomNavBar>  {
    // var untk menandakan dimulainya index untk proses navigasi
    int _selectedIndex = 0;
     // var untk inisialisasi text styling
    static const TextStyle optionStyle = 
    TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold
      );

     // var untk menyimpan list dari komponen navigasi --> label
      static const List<Widget> widgetOptions = <Widget>[
        Text(
          'Index 0: Home',
          style: optionStyle,
        ),
        Text(
          'Index 1: Wishlist',
          style: optionStyle,
        ),
        Text(
          'Index 2: Settings',
          style: optionStyle,
        ),
        Text(
          'Index 3: Profile',
          style: optionStyle,
        ),
      ];

      // membuat 1 function untk menandakan awal terjadinya state
      void _onItemTapped(int index) {
        setState(() {
          _selectedIndex = index;
        });
      }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAtOrNull(_selectedIndex)
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Wishlist',
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profiles',
              ),
          ],
          // menandakan index yg satu ini itu index yg dipilih
          currentIndex: _selectedIndex,
          selectedItemColor: primaryColor,
          onTap: _onItemTapped,
          ),
    );
  }
}