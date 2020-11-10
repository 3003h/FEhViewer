import 'package:FEhViewer/common/global.dart';
import 'package:FEhViewer/generated/l10n.dart';
import 'package:FEhViewer/models/index.dart';
import 'package:FEhViewer/models/states/ehconfig_model.dart';
import 'package:FEhViewer/pages/tab/gallery_base.dart';
import 'package:FEhViewer/pages/tab/search_page.dart';
import 'package:FEhViewer/route/navigator_util.dart';
import 'package:FEhViewer/utils/toast.dart';
import 'package:FEhViewer/utils/utility.dart';
import 'package:FEhViewer/values/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

import 'tab_base.dart';

class GalleryListTab extends StatefulWidget {
  const GalleryListTab(
      {Key key,
      this.tabIndex,
      this.scrollController,
      this.simpleSearch,
      this.cats})
      : super(key: key);

  final tabIndex;
  final ScrollController scrollController;

  final String simpleSearch;
  final int cats;

  @override
  State<StatefulWidget> createState() => _GalleryListTabState();
}

class _GalleryListTabState extends State<GalleryListTab> {
  String _title;
  int _curPage = 0;
  int _maxPage = 0;
  bool _isLoadMore = false;
  bool _firstLoading = false;
  final List<GalleryItem> _gallerItemBeans = <GalleryItem>[];
  String _search = '';

  //页码跳转的控制器
  final TextEditingController _pageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _parserSearch();
    _loadDataFirst();
  }

  void _parserSearch() {
    _search = widget.simpleSearch?.trim() ?? '';
  }

  Future<void> _loadDataFirst() async {
    final int _catNum =
        Provider.of<EhConfigModel>(context, listen: false).catFilter;

    Global.loggerNoStack.v('_loadDataFirst');
    setState(() {
      _gallerItemBeans.clear();
      _firstLoading = true;
    });

    final Tuple2<List<GalleryItem>, int> tuple =
        await Api.getGallery(cats: widget.cats ?? _catNum, serach: _search);
    final List<GalleryItem> gallerItemBeans = tuple.item1;
    _gallerItemBeans.addAll(gallerItemBeans);
    _maxPage = tuple.item2;
    setState(() {
      _firstLoading = false;
    });
  }

  Future<void> _reloadData({bool cleanSearch = false}) async {
    final int _catNum =
        Provider.of<EhConfigModel>(context, listen: false).catFilter;

    Global.loggerNoStack.v('_reloadData');
    if (cleanSearch) {
      _search = '';
    }
    if (_firstLoading) {
      setState(() {
        _firstLoading = false;
      });
    }
    final Tuple2<List<GalleryItem>, int> tuple =
        await Api.getGallery(cats: widget.cats ?? _catNum, serach: _search);
    final List<GalleryItem> gallerItemBeans = tuple.item1;
    setState(() {
      _curPage = 0;
      _gallerItemBeans.clear();
      _gallerItemBeans.addAll(gallerItemBeans);
      _maxPage = tuple.item2;
    });
  }

  Future<void> _loadDataMore({bool cleanSearch = false}) async {
    if (_isLoadMore) {
      return;
    }

    if (cleanSearch) {
      _search = '';
    }

    final int _catNum =
        Provider.of<EhConfigModel>(context, listen: false).catFilter;

    // 增加延时 避免build期间进行 setState
    await Future<void>.delayed(const Duration(milliseconds: 100));
    setState(() {
      _isLoadMore = true;
    });
    _curPage += 1;
    final String fromGid = _gallerItemBeans.last.gid;
    final Tuple2<List<GalleryItem>, int> tuple = await Api.getGallery(
        page: _curPage,
        fromGid: fromGid,
        cats: widget.cats ?? _catNum,
        serach: _search);
    final List<GalleryItem> gallerItemBeans = tuple.item1;

    setState(() {
      _gallerItemBeans.addAll(gallerItemBeans);
      _maxPage = tuple.item2;
      _isLoadMore = false;
    });
  }

  Future<void> _loadFromPage(int page, {bool cleanSearch = false}) async {
    Global.logger.v('jump to page =>  $page');

    if (cleanSearch) {
      _search = '';
    }
    setState(() {
      _firstLoading = true;
    });
    final int _catNum =
        Provider.of<EhConfigModel>(context, listen: false).catFilter;
    _curPage = page;
    final Tuple2<List<GalleryItem>, int> tuple = await Api.getGallery(
        page: _curPage, cats: widget.cats ?? _catNum, serach: _search);
    final List<GalleryItem> gallerItemBeans = tuple.item1;
    setState(() {
      _gallerItemBeans.clear();
      _gallerItemBeans.addAll(gallerItemBeans);
      _maxPage = tuple.item2;
      _firstLoading = false;
    });
  }

  /// 跳转页码
  Future<void> _jumpToPage(BuildContext context) async {
    void _jump(BuildContext context) {
      final String _input = _pageController.text.trim();

      if (_input.isEmpty) {
        showToast('输入为空');
      }

      // 数字检查
      if (!RegExp(r'(^\d+$)').hasMatch(_input)) {
        showToast('输入格式有误');
      }

      final int _toPage = int.parse(_input) - 1;
      if (_toPage >= 0 && _toPage <= _maxPage) {
        FocusScope.of(context).requestFocus(FocusNode());
        _loadFromPage(_toPage);
        Navigator.of(context).pop();
      } else {
        showToast('输入范围有误');
      }
    }

    return showCupertinoDialog<void>(
      context: context,
      // barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('页面跳转'),
          content: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('跳转范围 1~$_maxPage'),
                ),
                CupertinoTextField(
                  controller: _pageController,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  onEditingComplete: () {
                    // 点击键盘完成
                    // 画廊跳转
                    _jump(context);
                  },
                )
              ],
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('取消'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: const Text('确定'),
              onPressed: () {
                // 画廊跳转
                _jump(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final S ln = S.of(context);

    Global.logger.v('$_search ${ln.tab_gallery}');

    _title = (_search != null && _search.isNotEmpty) ? _search : ln.tab_gallery;

    final CustomScrollView customScrollView = CustomScrollView(
      controller: widget.scrollController,
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          backgroundColor: ThemeColors.navigationBarBackground,
//          heroTag: 'gallery',
          largeTitle: Text(_title),
          trailing: Container(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // 搜索按钮
                CupertinoButton(
                  padding: const EdgeInsets.all(0),
                  child: const Icon(
                    FontAwesomeIcons.search,
                    size: 20,
                  ),
                  onPressed: () {
                    NavigatorUtil.showSearch(context);

                    /*Navigator.push(context,
                        CupertinoPageRoute(builder: (context) {
                      return GallerySearchPage();
                    })).then((result) {
                      if (result is String && (result as String).isNotEmpty) {
                        // NavigatorUtil.goBack(context);
                        Global.logger.v('search $result');
                        _search = result;
                        _title = result;
                        _loadDataFirst();
                      }
                    });*/
                  },
                ),
                // 筛选按钮
                CupertinoButton(
                  padding: const EdgeInsets.all(0),
                  child: const Icon(
                    FontAwesomeIcons.filter,
                    size: 20,
                  ),
                  onPressed: () {
                    // Global.logger.v('${EHUtils.convNumToCatMap(1)}');
                    GalleryBase().setCats(context);
                  },
                ),
                // 页码跳转按钮
                CupertinoButton(
                  padding: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                      color: CupertinoColors.activeBlue,
                      child: Text(
                        '${_curPage + 1}',
                        style: const TextStyle(color: CupertinoColors.white),
                      ),
                    ),
                  ),
                  onPressed: () {
                    _jumpToPage(context);
                  },
                ),
              ],
            ),
          ),
        ),
        /*SliverToBoxAdapter(
            child: Container(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                color: ThemeColors.navigationBarBackground,
                child: CupertinoTextField())),*/

        CupertinoSliverRefreshControl(
          onRefresh: () async {
            await _reloadData();
          },
        ),
        SliverSafeArea(
          top: false,
          bottom: false,
          sliver: _firstLoading
              ? SliverFillRemaining(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: const CupertinoActivityIndicator(
                      radius: 14.0,
                    ),
                  ),
                )
              : getGalleryList(
                  _gallerItemBeans,
                  widget.tabIndex,
                  maxPage: _maxPage,
                  curPage: _curPage,
                  loadMord: _loadDataMore,
                ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.only(top: 50, bottom: 100),
            child: _isLoadMore
                ? const CupertinoActivityIndicator(
                    radius: 14,
                  )
                : Container(),
          ),
        ),
      ],
    );

    return CupertinoPageScaffold(
      child: customScrollView,
    );
  }
}
