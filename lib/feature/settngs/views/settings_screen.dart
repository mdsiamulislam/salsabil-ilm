import 'package:flutter/material.dart';
import 'package:ilm/core/theme/color/color.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: AppColors.info,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 18),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Profile',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'View and edit your profile',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // TODO: Navigate to profile screen
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.info.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.arrow_forward_ios, size: 18, color: AppColors.info),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),


              Text(
                'GENERAL',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 2,
                shadowColor: Colors.black12,
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.info,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                        ),
                      ),
                      title: Text('Notifications'),
                      subtitle: Text('Manage notification settings'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                    ListTile(
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        ),
                      ),
                      title: Text('Privacy'),
                      subtitle: Text('Privacy settings and permissions'),
                      trailing: Switch(
                        value: true,
                        onChanged: (bool value) {
                          value = !value;
                        },
                      ),
                    )
                  ],
                ),

              ),
              SizedBox(height: 50),
              Text(
                'CONTENT',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 2,
                shadowColor: Colors.black12,
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.info,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.dashboard_customize_outlined,
                          color: Colors.white,
                        ),
                      ),
                      title: Text('Feed Preferences'),
                      subtitle: Text('Customize your content feed'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
