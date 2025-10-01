import 'package:flutter/material.dart';
import 'package:ilm/core/string_constent/path_constent/image_path.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Trending',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    ' See All',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.primary,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image(
                              width: double.infinity,
                              height: 150,
                              image: AssetImage(ImagePath.prayerTimesBanner),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'The Beauty of Quranic Verses',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text('Article', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    ' See All',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.primary,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image(
                              width: double.infinity,
                              height: 150,
                              image: AssetImage(ImagePath.prayerTimesBanner),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'The Beauty of Quranic Verses',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text('Article', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
