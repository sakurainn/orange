import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('小账本'),
          centerTitle: true,
          leading: Icon(Icons.settings),
        ),
        body: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: _buildQuickButton(
                      color: Colors.pink,
                      text: '支出',
                      onPressed: () {
                        Get.bottomSheet(
                          Container(
                            margin: const EdgeInsets.only(
                              left: 19,
                              right: 16,
                              bottom: 16,
                            ),
                            height: Get.height / 2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: ListView(
                              children: [
                                AutoSizeText('一起来记下刚刚收到的钱钱💰吧',maxLines: 1,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                TextField(),
                              ],
                            )
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: _buildQuickButton(color: Colors.green, text: '收入'),
                  ),
                ],
              )
            ],
          ),
        ),
      );

  Widget _buildQuickButton(
          {Color? color, required String text, VoidCallback? onPressed}) =>
      ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color ?? Colors.orange),
          elevation: MaterialStateProperty.all(0),
          // textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white))
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      );
}
