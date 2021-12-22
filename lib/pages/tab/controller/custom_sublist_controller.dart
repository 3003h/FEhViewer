import 'package:english_words/english_words.dart';
import 'package:fehviewer/route/routes.dart';
import 'package:get/get.dart';

import 'tabview_controller.dart';

/// 控制单个自定义列表
class CustomSubListController extends TabViewController {
  CustomSubListController();

  @override
  void onInit() {
    wordList = generateWordPairs().take(100).toList();
    super.onInit();
  }

  List<WordPair> wordList = <WordPair>[].obs;
  Future<void> wordListRefresh() async {
    wordList = generateWordPairs().take(100).toList();
    await 1.seconds.delay();
  }
}