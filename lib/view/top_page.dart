import 'package:cook/model/history.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  List<History> historyList = [
    History(content: 'this text is test text.', createdTime: DateTime.now()),
    History(content: 'this text is test text 2.', createdTime: DateTime.now()),
    History(content: 'this text is test text 3.', createdTime: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 40,
              color: Color(0xff5a5a5a),
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                size: 40,
                color: Color(0xff5a5a5a),
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                size: 40,
                color: Color(0xff5a5a5a),
              )),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enjoy Cooking!!',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'CATEGORY',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5a5a5a)),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  SizedBox(
                    height: 111,
                    width: 180,
                    child: Card(
                      margin: EdgeInsets.all(7),
                      child: Center(
                          child: Text(
                        'メニューを作る',
                        style: TextStyle(
                            fontSize: 18, color: Color(0xff5a5a5a)),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 111,
                    width: 180,
                    child: Card(
                      margin: EdgeInsets.all(7),
                      child: Center(
                          child: Text('レシピ登録',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff5a5a5a)))),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'HISTORY',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5a5a5a)),
                ),
              ],
            ),
            SizedBox(height: 5,),
            HistoryTimeLine()
          ],
        ),
      ),
    );
  }
}

class HistoryTimeLine extends StatefulWidget {
  const HistoryTimeLine({super.key});

  @override
  State<HistoryTimeLine> createState() => _HistoryTimeLineState();
}

class _HistoryTimeLineState extends State<HistoryTimeLine> {
  List<History> historyList = [
    History(content: 'メニューを作成しました！', createdTime: DateTime.now()),
    History(content: 'メニューを作成しました！', createdTime: DateTime.now()),
    History(content: 'レシピを登録しました。', createdTime: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          // physics: NeverScrollableScrollPhysics(),
          itemCount: historyList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
              child: SizedBox(
                height: 60,
                width: 330,
                child: Card(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(DateFormat('yyyy年MM月dd日').format(historyList[index].createdTime!), style: TextStyle(fontSize: 12),),
                        ),
                        Text(historyList[index].content)
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
