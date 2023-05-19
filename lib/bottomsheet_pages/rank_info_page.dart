import 'package:flutter/material.dart';
import 'package:rootin/components/rank_tile.dart';
import 'package:rootin/utils/add_space.dart';

class RankInfoPage extends StatefulWidget {
  const RankInfoPage({super.key});

  @override
  State<RankInfoPage> createState() => _RankInfoPageState();
}

class _RankInfoPageState extends State<RankInfoPage> {
  List rankList = [
    ["0-100", "assets/0-100.png"],
    ["100-200", "assets/100-200.png"],
    ["200-300", "assets/200-300.png"],
    ["300-400", "assets/300-400.png"],
    ["500-600", "assets/500-600.png"],
    ["600-700", "assets/600-700.png"],
    ["700-800", "assets/700-800.png"],
    ["800-900", "assets/800-900.png"],
    ["900-1000", "assets/900-1000.png"],
    ["1000-1100", "assets/1000-1100.png"],
    ["1100-1200", "assets/1100-1200.png"],
    ["1200-1300", "assets/1200-1300.png"],
    ["1300-1400", "assets/1300-1400.png"],
    ["1400-1500", "assets/1400-1500.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddSpace().addVerticalSpace(50),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: rankList.length,
            itemBuilder: (context, index) {
              return RankTile(
                text: rankList[index][0],
                assetName: rankList[index][1],
              );
            },
          ),
        ),
      ],
    );
  }
}
