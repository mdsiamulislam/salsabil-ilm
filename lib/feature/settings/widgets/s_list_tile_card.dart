
import 'package:flutter/material.dart';
import 'package:ilm/feature/settings/widgets/s_list_tile.dart';


class SListTileCard extends StatelessWidget {
  List<Map<String, dynamic>> listTileList;
  SListTileCard({
    required this.listTileList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shadowColor: Colors.black12,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: listTileList.length,
        itemBuilder: (context, index) {
          return SListTile(
            title: listTileList[index]['title'],
            subtitle: listTileList[index]['subtitle'],
            prefixBgColor: listTileList[index]['prefixBgColor'],
            prefixIcon: listTileList[index]['prefixIcon'],
            suffixIcon: listTileList[index]['suffixIcon'],
            suffixSwitch: listTileList[index]['suffixSwitch'],
          );
        },
      ),

    );
  }
}