import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text("Soy un titulo"),
            subtitle: Text("Mathias es el mejor del mundo y va hacer una app god"),
            leading: Icon(Icons.photo_album_outlined , color: AppTheme.primary),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {},child: const Text("Cancel")),
                TextButton(onPressed: () {},child: const Text("ok"))
              ],
            ),
          )

        ],
      ),
    );
  }
}