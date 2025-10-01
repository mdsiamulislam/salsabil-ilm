import 'package:flutter/material.dart';
import 'package:ilm/core/theme/color/color.dart';

import '../../../core/string_constent/path_constent/image_path.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                      child: Image(
                        width: double.infinity,
                        height: 200,
                        image: AssetImage(ImagePath.prayerTimesBanner),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 6),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Understanding the Quran: A Comprehensive Guide to Its Teachings',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Explore the profound teachings and historical context of the Quran. This article provides insights, key lessons, and practical applications for daily life.',
                            style: TextStyle(color: Colors.grey[700], fontSize: 13),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Icon(Icons.edit, size: 18, color: Colors.blueAccent),
                              SizedBox(width: 6),
                              Text('Article', style: TextStyle(color: Colors.blueAccent, fontSize: 13, fontWeight: FontWeight.w500)),
                              Spacer(),
                              Icon(Icons.bookmark , size: 18, color: AppColors.primary),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
