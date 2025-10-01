import 'package:flutter/material.dart';
import 'package:ilm/core/theme/color/color.dart';
import 'package:ilm/feature/bookmark/views/bookmark_screen.dart';
import 'package:ilm/feature/explore/views/explore_screen.dart';
import 'package:ilm/feature/home/views/home_screen.dart';
import 'package:ilm/feature/settings/views/settings_screen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  String _title = 'Salsabil Ilm';

  final List<Widget> pages = const [
    HomeScreen(),
    ExploreScreen(),
    BookmarkScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
            _title,
            style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
                fontSize: 20
            )
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.refresh,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedIconTheme: IconThemeData(color: AppColors.primary),
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items:[
          _navigateIcon(
            0,
            Icons.home,
            'Home',
          ),
          _navigateIcon(
            1,
            Icons.explore,
            'Explore',
          ),
          _navigateIcon(
            2,
            Icons.bookmark_outlined,
            'Bookmark',
          ),
          _navigateIcon(
            3,
            Icons.settings,
            'Settings',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            switch (index) {
              case 0:
                _title = 'Salsabil Ilm';
                break;
              case 1:
                _title = 'Explore';
                break;
              case 2:
                _title = 'Bookmark';
                break;
              case 3:
                _title = 'Settings';
                break;
              default:
                _title = 'Salsabil Ilm';
            }
          });
        },
      ),
    );
  }

  _navigateIcon(int index, IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
      tooltip: label,
    );
  }
}