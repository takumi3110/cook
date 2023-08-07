import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu, size: 40, color: Color(0xff5a5a5a),)),

                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: const Icon(Icons.home_outlined, size: 40, color: Color(0xff5a5a5a),)),
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_outlined, size: 40, color: Color(0xff5a5a5a),))

            ],
          ),


        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: const Column(
        children: [
          Text('Enjoy Cooking!!', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
          SizedBox(height: 40,),
          Column(
            children: [
              Text('CATEGORY', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff5a5a5a)),),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:5.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 111,
                      width: 180,
                      child: Card(
                        child: Center(child: Text('メニューを作る', style: TextStyle(fontSize: 18, color: Color(0xff5a5a5a)),)),
                        margin: EdgeInsets.all(7),
                      ),
                    ),

                    SizedBox(
                      height: 111,
                      width: 180,
                      child: Card(
                        child: Center(child: Text('レシピ登録', style: TextStyle(fontSize: 18, color: Color(0xff5a5a5a)))),
                        margin: EdgeInsets.all(7),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 50,),
          Column(
            children: [
              Text('HISTORY', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff5a5a5a)),),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 60,
                  width: 330,
                  child: Card(
                    child: Center(child: Text('history card')),
                    margin: EdgeInsets.all(7),
                  ),
                ),
              )
            ],
          )
        ],
        ),
        ),
    );
  }
}
