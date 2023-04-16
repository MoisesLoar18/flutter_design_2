import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/card_list.dart';
import 'package:flutter_application_1/widgets/transactions_scroll.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded), color: Colors.black),
        actions: [
          CircleAvatar(radius: 20, backgroundColor: Colors.transparent, child: ClipRRect(borderRadius: BorderRadius.circular(50), child: Image.network('https://randomuser.me/api/portraits/thumb/men/75.jpg'))),
          const SizedBox(width: 10),
        ],
      ),
      body: Stack(children: [
        SizedBox(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text('My Cards', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                SizedBox(height: 20),
                ListCardsWidget(),
              ],
            ),
          ),
        ),
        const TransactionScrollWidget(),
      ]),
    );
  }
}
