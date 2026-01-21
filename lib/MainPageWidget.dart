import 'package:flutter/material.dart';
import '/detail/CouponDetail.dart';
import '/list/CouponListView.dart';
import '/register/CouponRegisterPage.dart';

class MainPageWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MainPageWidget();
  }

}
class _MainPageWidget extends State<MainPageWidget>{

  bool _isSelectedItem = false;

  // 詳細画面を表示する
  void openDetail(){
    setState(() {
      _isSelectedItem = true;
    });
  }
  // 詳細画面を消す
  void closeDetail(){
    setState(() {
      _isSelectedItem = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('クーポン整理帳'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          CouponListView(openDetail),
          if (_isSelectedItem)
            CouponDetail(closeDetail)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CouponRegisterPage()),
          );
        },
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}