import 'package:flutter/material.dart';

class WidgetUtils {

  static Container categoryBox(String title) {
    return Container(
      height: 105,
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: Colors.amberAccent
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(
            color: Colors.amberAccent,
            blurRadius: 2,
            offset: Offset(2, 2)
        )],
        // image: DecorationImage(image: AssetImage('assets/images/taste.png'))
      ),
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 105,
            width: 70,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/cooking.png'))
            ),

          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 18,
                color: Color(0xff5a5a5a),
                fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }

  static ListTile createSideMenuListTile(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon,color: const Color(0xff5a5a5a),),
      title: Text(title, style: const TextStyle(color: Color(0xff5a5a5a), fontSize: 16, fontWeight: FontWeight.w700)),
      onTap: () {},
    );
  }
}