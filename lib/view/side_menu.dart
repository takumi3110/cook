import 'package:cook/utils/widget_utils.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Drawer(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 90,
              child: DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        width: 150,
                        child: const Text('Enjoy\ncooking', style: TextStyle(
                          color: Color(0xff5a5a5a),
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),),
                      ),
                      Container(
                        width: 70,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/bear.png'))
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            WidgetUtils.createSideMenuListTile('HOME', Icons.home_outlined),
            WidgetUtils.createSideMenuListTile('メニューを作る', Icons.edit_outlined),
            WidgetUtils.createSideMenuListTile('レシピ一覧', Icons.list_alt_outlined),
            WidgetUtils.createSideMenuListTile('カレンダー', Icons.calendar_month_outlined),
            WidgetUtils.createSideMenuListTile('利用規約', Icons.insert_drive_file_outlined),
            WidgetUtils.createSideMenuListTile('プライバシーポリシー', Icons.key_outlined),
          ],
        ),
      ),
    );
  }
}


