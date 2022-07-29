import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodsberrymobile/store/global/list-home-pages/list-widgets.dart';
import 'package:foodsberrymobile/store/global/theme.dart';

class TitleBlock extends StatelessWidget {
  const TitleBlock(
      {Key? key,
      this.title = '',
      this.slug = '/',
      this.label = "смотреть все",
      this.indexTab})
      : super(key: key);
  final String? title;
  final String? label;
  final String? slug;
  final int? indexTab;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 2, top: 6, bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: CustomTextStyle.sectionTitle,
          ),
          TextButton(
            onPressed: () {
              print('GOTO !&?');
              if (indexTab != null) {
                controllerTabsHome!.index = indexTab!;
              }
            },
            child: Row(children: [
              Text(
                label!,
                style: CustomTextStyle.sectionSlug,
              ),
              const Icon(
                CupertinoIcons.chevron_right,
                size: 16,
                color: FSColors.baseFSColor,
              ),
            ]),
          ),

/*           Text(
            'смотреть все',
            style: CustomTextStyle.sectionSlug,
          ), */
        ],
      ),
    );
  }
}
