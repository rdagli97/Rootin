import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rootin/components/motto_tile.dart';
import 'package:rootin/provider/motto_words_provider.dart';
import 'package:rootin/utils/padding_values.dart';

class MottoPage extends StatefulWidget {
  const MottoPage({super.key});

  @override
  State<MottoPage> createState() => _MottoPageState();
}

class _MottoPageState extends State<MottoPage> {
  @override
  Widget build(BuildContext context) {
    MottoProvider watchMottoProvider = context.watch<MottoProvider>();
    return Padding(
      padding: PaddingValues.symmetricH20V13,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return MottoTile(
                  asset: watchMottoProvider.mottoWordsList[0][0],
                  motto: watchMottoProvider.mottoWordsList[0][1],
                  whoSaid: watchMottoProvider.mottoWordsList[0][2],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
