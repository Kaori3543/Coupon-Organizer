import 'package:flutter/material.dart';

class CouponRegisterPage extends StatefulWidget {
  const CouponRegisterPage({super.key});

  @override
  State<CouponRegisterPage> createState() => _CouponRegisterPageState();
}

class _CouponRegisterPageState extends State<CouponRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('クーポン登録'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 店名入力
              Text('店名', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: '店名を入力',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              // 割引内容入力
              Text('割引内容', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: '例: 10%オフ',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              // 有効期限入力
              Text('有効期限', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: '例: 2024/12/31',
                  border: OutlineInputBorder(),
                ),
                readOnly: true,
                onTap: () {
                  // TODO: 日付選択ダイアログ(次のフェーズで実装)
                  print('日付選択をタップ');
                },
              ),
              SizedBox(height: 20),

              // 対象商品入力
              Text('対象商品', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: '対象商品を入力',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              SizedBox(height: 20),

              // 画像選択ボタン
              Text('クーポン画像', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.image, size: 50, color: Colors.grey),
                      SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: 画像選択(次のフェーズで実装)
                          print('画像選択をタップ');
                        },
                        child: Text('画像を選択'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),

              // ボタン
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Text('キャンセル'),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: 保存処理(次のフェーズで実装)
                        print('保存ボタンをタップ');
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Text('保存'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
