import 'package:fehviewer/utils/logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/bottomsheet/bottomsheet.dart';
import 'package:get/get_navigation/src/dialog/dialog_route.dart';
import 'package:get/get_navigation/src/routes/default_route.dart';

class SecondNavigatorObserver extends NavigatorObserver {
  // 单例公开访问点
  factory SecondNavigatorObserver() => _sharedInstance();

  // 私有构造函数
  SecondNavigatorObserver._() {
    // 具体初始化代码
  }

  // 静态、同步、私有访问点
  static SecondNavigatorObserver _sharedInstance() {
    _instance ??= SecondNavigatorObserver._();
    return _instance!;
  }

  // 静态私有成员，没有初始化
  static SecondNavigatorObserver? _instance;

  static List<Route<dynamic>> history = <Route<dynamic>>[];

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    history.remove(route);
    logger.d('didPop: \n${route.settings}');

    ///调用Navigator.of(context).pop() 出栈时回调
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    history.add(route);
    logger.d('didPush: \n${route.settings}');

    ///调用Navigator.of(context).push(Route()) 进栈时回调
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    history.remove(route);
    logger.d('didRemove: \n${route.settings}');

    ///调用Navigator.of(context).removeRoute(Route()) 移除某个路由回调
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    history.remove(oldRoute);
    if (newRoute != null) history.add(newRoute);
    logger.d('didReplace: \n${newRoute?.settings}');

    ///调用Navigator.of(context).replace( oldRoute:Route("old"),newRoute:Route("new")) 替换路由时回调
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    super.didStartUserGesture(route, previousRoute);

    ///iOS侧边手势滑动触发回调 手势开始时回调
  }

  @override
  void didStopUserGesture() {
    super.didStopUserGesture();

    ///iOS侧边手势滑动触发停止时回调 不管页面是否退出了都会调用
  }
}

String? _extractRouteName(Route? route) {
  if (route?.settings.name != null) {
    return route!.settings.name;
  }

  if (route is GetPageRoute) {
    return route.routeName;
  }

  if (route is GetDialogRoute) {
    return 'DIALOG ${route.hashCode}';
  }

  if (route is GetModalBottomSheetRoute) {
    return 'BOTTOMSHEET ${route.hashCode}';
  }

  return null;
}
