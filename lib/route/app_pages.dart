import 'dart:io';

import 'package:fehviewer/common/controller/cache_controller.dart';
import 'package:fehviewer/common/service/depth_service.dart';
import 'package:fehviewer/pages/gallery/controller/taginfo_controller.dart';
import 'package:fehviewer/pages/gallery/view/add_tags_page.dart';
import 'package:fehviewer/pages/gallery/view/all_preview_page.dart';
import 'package:fehviewer/pages/gallery/view/comment_page.dart';
import 'package:fehviewer/pages/gallery/view/gallery_info_page.dart';
import 'package:fehviewer/pages/gallery/view/gallery_page.dart';
import 'package:fehviewer/pages/image_view/controller/view_contorller.dart';
import 'package:fehviewer/pages/image_view/view/view_page.dart';
import 'package:fehviewer/pages/login/controller/login_controller.dart';
import 'package:fehviewer/pages/login/view/login_page.dart';
import 'package:fehviewer/pages/login/view/web_login_in.dart';
import 'package:fehviewer/pages/setting/about_page.dart';
import 'package:fehviewer/pages/setting/advanced_setting_page.dart';
import 'package:fehviewer/pages/setting/controller/tab_setting_controller.dart';
import 'package:fehviewer/pages/setting/custom_hosts_page.dart';
import 'package:fehviewer/pages/setting/download_setting_page.dart';
import 'package:fehviewer/pages/setting/eh_mysettings_page.dart';
import 'package:fehviewer/pages/setting/eh_setting_page.dart';
import 'package:fehviewer/pages/setting/log_page.dart';
import 'package:fehviewer/pages/setting/search_setting_page.dart';
import 'package:fehviewer/pages/setting/security_setting_page.dart';
import 'package:fehviewer/pages/setting/tab_setting.dart';
import 'package:fehviewer/pages/setting/view/login_webdav.dart';
import 'package:fehviewer/pages/setting/view_setting_page.dart';
import 'package:fehviewer/pages/setting/webdav_setting_page.dart';
import 'package:fehviewer/pages/tab/bindings/splash_binding.dart';
import 'package:fehviewer/pages/tab/view/download_page.dart';
import 'package:fehviewer/pages/tab/view/empty.dart';
import 'package:fehviewer/pages/tab/view/favorite_page.dart';
import 'package:fehviewer/pages/tab/view/favorite_sel_page.dart';
import 'package:fehviewer/pages/tab/view/history_page.dart';
import 'package:fehviewer/pages/tab/view/home_page.dart';
import 'package:fehviewer/pages/tab/view/popular_page.dart';
import 'package:fehviewer/pages/tab/view/quick_search_page.dart';
import 'package:fehviewer/pages/tab/view/search_page.dart';
import 'package:fehviewer/pages/tab/view/splash_page.dart';
import 'package:fehviewer/pages/tab/view/toplist_page.dart';
import 'package:fehviewer/pages/tab/view/unlock_page.dart';
import 'package:fehviewer/pages/tab/view/watched_page.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'routes.dart';

const Duration kUnLockPageTransitionDuration = Duration(milliseconds: 200);

class AppPages {
  static final List<GetPage> routes = <GetPage>[
    GetPage(
      name: EHRoutes.root,
      page: () => SplashPage(),
      binding: SplashBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: EHRoutes.empty,
      page: () => const EmptyPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: EHRoutes.unlockPage,
      page: () => const UnLockPage(),
      transition: Transition.noTransition,
      transitionDuration: kUnLockPageTransitionDuration,
    ),
    GetPage(
      name: EHRoutes.home,
      page: () => CupertinoScaffold(body: HomePage()),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: EHRoutes.selFavorie,
      page: () => FavoriteSelectorPage(),
    ),
    GetPage(
      name: EHRoutes.ehSetting,
      page: () => const EhSettingPage(),
    ),
    GetPage(
      name: EHRoutes.advancedSetting,
      page: () => const AdvancedSettingPage(),
      binding: BindingsBuilder(() => Get.lazyPut(() => CacheController())),
    ),
    GetPage(
      name: EHRoutes.about,
      page: () => AboutPage(),
    ),
    GetPage(
      name: EHRoutes.downloadSetting,
      page: () => DownloadSettingPage(),
    ),
    GetPage(
      name: EHRoutes.searchSetting,
      page: () => SearchSettingPage(),
    ),
    GetPage(
      name: EHRoutes.securitySetting,
      page: () => SecuritySettingPage(),
    ),
    GetPage(
      name: EHRoutes.readSeting,
      page: () => ReadSettingPage(),
    ),
    GetPage(
      name: EHRoutes.login,
      page: () => const LoginExtPage(),
      binding: BindingsBuilder(
        () => Get.lazyPut(() => LoginController()),
      ),
    ),
    GetPage<List<Cookie>>(
      name: EHRoutes.webLogin,
      page: () => WebLoginViewIn(),
    ),
    GetPage(
      name: EHRoutes.galleryComment,
      page: () => CommentPage(),
    ),
    GetPage(
      name: EHRoutes.galleryAllPreviews,
      page: () => const AllPreviewPage(),
    ),
    GetPage(
      name: EHRoutes.addTag,
      page: () => AddTagPage(),
      binding: BindingsBuilder(
        () => Get.lazyPut(() => TagInfoController(), tag: pageCtrlDepth),
      ),
    ),
    GetPage(
      name: EHRoutes.galleryInfo,
      page: () => const GalleryInfoPage(),
    ),
    GetPage(
      name: EHRoutes.pageSetting,
      page: () => TabSettingPage(),
      binding: BindingsBuilder(
        () => Get.lazyPut(() => TabSettingController()),
      ),
    ),
    GetPage(
      name: EHRoutes.history,
      page: () => const HistoryTab(),
    ),
    GetPage(
      name: EHRoutes.watched,
      page: () => const WatchedListTab(),
    ),
    GetPage(
      name: EHRoutes.favorite,
      page: () => const FavoriteTab(),
    ),
    GetPage(
      name: EHRoutes.toplist,
      page: () => const ToplistTab(),
    ),
    GetPage(
      name: EHRoutes.popular,
      page: () => const PopularListTab(),
    ),
    GetPage(
      name: EHRoutes.download,
      page: () => const DownloadTab(),
    ),

    GetPage(
      name: EHRoutes.galleryViewExt,
      page: () => const ViewPage(),
      binding: BindingsBuilder<dynamic>(() {
        Get.lazyPut(() => ViewExtController());
      }),
      // opaque: kDebugMode,
      opaque: false,
      showCupertinoParallax: false,
    ),

    // 使用命名路由跳转 EHRoutes.galleryPage
    GetPage(
      name: EHRoutes.galleryPage,
      page: () => GalleryMainPage(),
      preventDuplicates: false,
    ),

    GetPage(
      name: EHRoutes.search,
      page: () => const GallerySearchPage(),
      // page: () => const SearchPage(),
      // page: () => const EmptyPage(),
      preventDuplicates: false,
    ),

    GetPage(
      name: EHRoutes.quickSearch,
      page: () => QuickSearchListPage(),
    ),
    GetPage(
      name: EHRoutes.customHosts,
      page: () => const CustomHostsPage(),
    ),
    GetPage(
      name: EHRoutes.webDavSetting,
      page: () => const WebDavSetting(),
    ),
    GetPage(
      name: EHRoutes.logfile,
      page: () => LogPage(),
    ),
    GetPage(
      name: EHRoutes.mySettings,
      page: () => const EhMySettingsPage(),
    ),
    GetPage(
      name: EHRoutes.loginWebDAV,
      page: () => const LoginWebDAV(),
    ),
  ];
}
