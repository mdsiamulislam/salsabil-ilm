import 'package:flutter/material.dart';
import 'package:ilm/feature/settings/static_data/settings_tile_list.dart';
import '../widgets/profile_card_tile.dart';
import '../widgets/s_list_tile_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
              ProfileCardTile(),
              SizedBox(height: 50),
              titleLabel('GENERAL'),
              SListTileCard( listTileList: SettingsTileList.generalSettings),
              SizedBox(height: 50),
              titleLabel('CONTENT'),
              SListTileCard( listTileList: SettingsTileList.contentSettings),
            ],
          ),
        ),
      ),
    );
  }

  Text titleLabel(String label) {return Text(label, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold));}
}



