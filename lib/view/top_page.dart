import 'package:cook/model/history.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffef2),
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xfffffef2),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const Text(
                'Enjoy Cooking!!',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'CATEGORY',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5a5a5a)),
            ),
           const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                      // image: DecorationImage(image: AssetImage('assets/images/22119435.png'))
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 105,
                          width: 70,
                          decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/22123444.png'))
                          ),

                        ),
                        const Text(
                          'メニューを\n作る',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff5a5a5a),
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
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
                        // image: DecorationImage(image: AssetImage('assets/images/22119435.png'))
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 105,
                          width: 70,
                          decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/22119435.png'))
                          ),

                        ),
                        const Text(
                          'レシピを\n登録する',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff5a5a5a),
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 30,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'HISTORY',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5a5a5a)),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
              child: SizedBox(
                height: 60,
                width: 330,
                child: Card(
                  elevation: 0,
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.amberAccent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            DateFormat('yyyy年MM月dd日')
                                .format(historyList[index].createdTime!),
                            style: const TextStyle(fontSize: 12, color: Color(0xff5a5a5a)),
                          ),
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
