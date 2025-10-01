import 'package:flutter/material.dart';

import '../../../core/theme/color/color.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: AppColors.primary,
                  labelColor: AppColors.primary,
                  unselectedLabelColor: Colors.grey,
                  indicatorWeight: 2,
                  tabs: [
                    Tab(text: 'Articles'),
                    Tab(text: 'Videos'),
                    Tab(text: 'Audio'),
                    Tab(text: 'Books'),
                    Tab(text: 'Podcasts'),
                    Tab(text: 'Typography'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('Articles Content')),
                  Center(child: Text('Videos Content')),
                  Center(child: Text('Audio Content')),
                  Center(child: Text('Books Content')),
                  Center(child: Text('Podcasts Content')),
                  Center(child: Text('Typography Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
