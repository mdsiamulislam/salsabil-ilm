import 'package:flutter/material.dart';
import 'package:ilm/feature/home/tab/quranic_verse.dart';
import 'package:ilm/feature/home/tab/the_sunnah.dart';
import '../../../core/theme/color/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: TabBar(
                      indicatorColor: AppColors.primary,
                      labelColor: AppColors.primary,
                      unselectedLabelColor: Colors.grey,
                      indicatorWeight: 2,
                      tabs: [
                        Tab(text: 'Quranic Verse'),
                        Tab(text: 'The Sunnah'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: TabBarView(
                      children: [
                        QuranicVerseTab(),
                        TheSunnahTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
