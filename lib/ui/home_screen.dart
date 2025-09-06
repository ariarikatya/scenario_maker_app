import 'package:flutter/material.dart';
import 'package:scenario_maker_app/ui/screens/saved_scenarios/saved_scenarios_screen.dart';
import 'package:scenario_maker_app/ui/screens/scenario_generations/platform_selection_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    PlatformSelectionScreen(),
    SavedScenariosScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Saved',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue[600],
            unselectedItemColor: Colors.grey[400],
            iconSize: 28,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
