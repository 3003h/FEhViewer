import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

import 'index.dart';

@immutable
class EhConfig {

  const EhConfig({
    this.jpnTitleInGalleryPage,
    this.tagTranslat,
    this.tagTranslatVer,
    required this.favoritesOrder,
    this.siteEx,
    this.galleryImgBlur,
    this.favPicker,
    this.favLongTap,
    this.lastFavcat,
    this.lastShowFavcat,
    this.lastShowFavTitle,
    required this.listMode,
    this.safeMode,
    required this.catFilter,
    required this.maxHistory,
    this.searchBarComp,
    this.pureDarkTheme,
    required this.viewModel,
    this.clipboardLink,
    this.commentTrans,
    this.autoLockTimeOut,
    this.showPageInterval,
    this.orientation,
    this.vibrate,
    this.tagIntroImgLv,
    this.debugMode,
    this.debugCount,
    this.autoRead,
    this.turnPageInv,
    this.toplist,
    this.tabletLayout,
    this.tabletLayoutValue,
    this.enableTagTranslateCDN,
    this.autoSelectProfile,
    this.turnPageAnimations,
    this.selectProfile,
    this.linkRedirect,
    this.viewColumnMode,
    this.fixedHeightOfListItems,
    this.tagTranslateDataUpdateMode,
    this.showCommentAvatar,
    this.avatarType,
    this.boringAvatarsType,
    this.textAvatarsType,
    this.avatarBorderRadiusType,
    this.enablePHashCheck,
    this.enableQRCodeCheck,
    this.viewFullscreen,
    this.blurringOfCoverBackground,
    this.listViewTagLimit,
    this.redirectThumbLink,
    this.volumnTurnPage,
    this.proxyType,
    this.proxyHost,
    this.proxyPort,
    this.proxyUsername,
    this.proxyPassword,
    this.webDAVMaxConnections,
    this.hideTopBarOnScroll,
    this.readViewCompatibleMode,
    this.translateSearchHistory,
    this.nativeHttpClientAdapter,
    this.showComments,
    this.showOnlyUploaderComment,
    this.showGalleryTags,
    this.hideGalleryThumbnails,
    this.horizontalThumbnails,
    this.pHashThreshold,
  });

  final bool? jpnTitleInGalleryPage;
  final bool? tagTranslat;
  final String? tagTranslatVer;
  final String favoritesOrder;
  final bool? siteEx;
  final bool? galleryImgBlur;
  final bool? favPicker;
  final bool? favLongTap;
  final String? lastFavcat;
  final String? lastShowFavcat;
  final String? lastShowFavTitle;
  final String listMode;
  final bool? safeMode;
  final int catFilter;
  final int maxHistory;
  final bool? searchBarComp;
  final bool? pureDarkTheme;
  final String viewModel;
  final bool? clipboardLink;
  final bool? commentTrans;
  final int? autoLockTimeOut;
  final bool? showPageInterval;
  final String? orientation;
  final bool? vibrate;
  final String? tagIntroImgLv;
  final bool? debugMode;
  final int? debugCount;
  final bool? autoRead;
  final int? turnPageInv;
  final String? toplist;
  final bool? tabletLayout;
  final String? tabletLayoutValue;
  final bool? enableTagTranslateCDN;
  final bool? autoSelectProfile;
  final bool? turnPageAnimations;
  final String? selectProfile;
  final bool? linkRedirect;
  final String? viewColumnMode;
  final bool? fixedHeightOfListItems;
  final String? tagTranslateDataUpdateMode;
  final bool? showCommentAvatar;
  final String? avatarType;
  final String? boringAvatarsType;
  final String? textAvatarsType;
  final String? avatarBorderRadiusType;
  final bool? enablePHashCheck;
  final bool? enableQRCodeCheck;
  final bool? viewFullscreen;
  final bool? blurringOfCoverBackground;
  final int? listViewTagLimit;
  final bool? redirectThumbLink;
  final bool? volumnTurnPage;
  final String? proxyType;
  final String? proxyHost;
  final int? proxyPort;
  final String? proxyUsername;
  final String? proxyPassword;
  final int? webDAVMaxConnections;
  final bool? hideTopBarOnScroll;
  final bool? readViewCompatibleMode;
  final bool? translateSearchHistory;
  final bool? nativeHttpClientAdapter;
  final bool? showComments;
  final bool? showOnlyUploaderComment;
  final bool? showGalleryTags;
  final bool? hideGalleryThumbnails;
  final bool? horizontalThumbnails;
  final int? pHashThreshold;

  factory EhConfig.fromJson(Map<String,dynamic> json) => EhConfig(
    jpnTitleInGalleryPage: json['jpnTitleInGalleryPage'] != null ? json['jpnTitleInGalleryPage'] as bool : null,
    tagTranslat: json['tagTranslat'] != null ? json['tagTranslat'] as bool : null,
    tagTranslatVer: json['tagTranslatVer']?.toString(),
    favoritesOrder: json['favoritesOrder'].toString(),
    siteEx: json['siteEx'] != null ? json['siteEx'] as bool : null,
    galleryImgBlur: json['galleryImgBlur'] != null ? json['galleryImgBlur'] as bool : null,
    favPicker: json['favPicker'] != null ? json['favPicker'] as bool : null,
    favLongTap: json['favLongTap'] != null ? json['favLongTap'] as bool : null,
    lastFavcat: json['lastFavcat']?.toString(),
    lastShowFavcat: json['lastShowFavcat']?.toString(),
    lastShowFavTitle: json['lastShowFavTitle']?.toString(),
    listMode: json['listMode'].toString(),
    safeMode: json['safeMode'] != null ? json['safeMode'] as bool : null,
    catFilter: json['catFilter'] as int,
    maxHistory: json['maxHistory'] as int,
    searchBarComp: json['searchBarComp'] != null ? json['searchBarComp'] as bool : null,
    pureDarkTheme: json['pureDarkTheme'] != null ? json['pureDarkTheme'] as bool : null,
    viewModel: json['viewModel'].toString(),
    clipboardLink: json['clipboardLink'] != null ? json['clipboardLink'] as bool : null,
    commentTrans: json['commentTrans'] != null ? json['commentTrans'] as bool : null,
    autoLockTimeOut: json['autoLockTimeOut'] != null ? json['autoLockTimeOut'] as int : null,
    showPageInterval: json['showPageInterval'] != null ? json['showPageInterval'] as bool : null,
    orientation: json['orientation']?.toString(),
    vibrate: json['vibrate'] != null ? json['vibrate'] as bool : null,
    tagIntroImgLv: json['tagIntroImgLv']?.toString(),
    debugMode: json['debugMode'] != null ? json['debugMode'] as bool : null,
    debugCount: json['debugCount'] != null ? json['debugCount'] as int : null,
    autoRead: json['autoRead'] != null ? json['autoRead'] as bool : null,
    turnPageInv: json['turnPageInv'] != null ? json['turnPageInv'] as int : null,
    toplist: json['toplist']?.toString(),
    tabletLayout: json['tabletLayout'] != null ? json['tabletLayout'] as bool : null,
    tabletLayoutValue: json['tabletLayoutValue']?.toString(),
    enableTagTranslateCDN: json['enableTagTranslateCDN'] != null ? json['enableTagTranslateCDN'] as bool : null,
    autoSelectProfile: json['autoSelectProfile'] != null ? json['autoSelectProfile'] as bool : null,
    turnPageAnimations: json['turnPageAnimations'] != null ? json['turnPageAnimations'] as bool : null,
    selectProfile: json['selectProfile']?.toString(),
    linkRedirect: json['linkRedirect'] != null ? json['linkRedirect'] as bool : null,
    viewColumnMode: json['viewColumnMode']?.toString(),
    fixedHeightOfListItems: json['fixedHeightOfListItems'] != null ? json['fixedHeightOfListItems'] as bool : null,
    tagTranslateDataUpdateMode: json['tagTranslateDataUpdateMode']?.toString(),
    showCommentAvatar: json['showCommentAvatar'] != null ? json['showCommentAvatar'] as bool : null,
    avatarType: json['avatarType']?.toString(),
    boringAvatarsType: json['boringAvatarsType']?.toString(),
    textAvatarsType: json['textAvatarsType']?.toString(),
    avatarBorderRadiusType: json['avatarBorderRadiusType']?.toString(),
    enablePHashCheck: json['enablePHashCheck'] != null ? json['enablePHashCheck'] as bool : null,
    enableQRCodeCheck: json['enableQRCodeCheck'] != null ? json['enableQRCodeCheck'] as bool : null,
    viewFullscreen: json['viewFullscreen'] != null ? json['viewFullscreen'] as bool : null,
    blurringOfCoverBackground: json['blurringOfCoverBackground'] != null ? json['blurringOfCoverBackground'] as bool : null,
    listViewTagLimit: json['listViewTagLimit'] != null ? json['listViewTagLimit'] as int : null,
    redirectThumbLink: json['redirectThumbLink'] != null ? json['redirectThumbLink'] as bool : null,
    volumnTurnPage: json['volumnTurnPage'] != null ? json['volumnTurnPage'] as bool : null,
    proxyType: json['proxyType']?.toString(),
    proxyHost: json['proxyHost']?.toString(),
    proxyPort: json['proxyPort'] != null ? json['proxyPort'] as int : null,
    proxyUsername: json['proxyUsername']?.toString(),
    proxyPassword: json['proxyPassword']?.toString(),
    webDAVMaxConnections: json['webDAVMaxConnections'] != null ? json['webDAVMaxConnections'] as int : null,
    hideTopBarOnScroll: json['hideTopBarOnScroll'] != null ? json['hideTopBarOnScroll'] as bool : null,
    readViewCompatibleMode: json['readViewCompatibleMode'] != null ? json['readViewCompatibleMode'] as bool : null,
    translateSearchHistory: json['translateSearchHistory'] != null ? json['translateSearchHistory'] as bool : null,
    nativeHttpClientAdapter: json['nativeHttpClientAdapter'] != null ? json['nativeHttpClientAdapter'] as bool : null,
    showComments: json['showComments'] != null ? json['showComments'] as bool : null,
    showOnlyUploaderComment: json['showOnlyUploaderComment'] != null ? json['showOnlyUploaderComment'] as bool : null,
    showGalleryTags: json['showGalleryTags'] != null ? json['showGalleryTags'] as bool : null,
    hideGalleryThumbnails: json['hideGalleryThumbnails'] != null ? json['hideGalleryThumbnails'] as bool : null,
    horizontalThumbnails: json['horizontalThumbnails'] != null ? json['horizontalThumbnails'] as bool : null,
    pHashThreshold: json['pHashThreshold'] != null ? json['pHashThreshold'] as int : null
  );
  
  Map<String, dynamic> toJson() => {
    'jpnTitleInGalleryPage': jpnTitleInGalleryPage,
    'tagTranslat': tagTranslat,
    'tagTranslatVer': tagTranslatVer,
    'favoritesOrder': favoritesOrder,
    'siteEx': siteEx,
    'galleryImgBlur': galleryImgBlur,
    'favPicker': favPicker,
    'favLongTap': favLongTap,
    'lastFavcat': lastFavcat,
    'lastShowFavcat': lastShowFavcat,
    'lastShowFavTitle': lastShowFavTitle,
    'listMode': listMode,
    'safeMode': safeMode,
    'catFilter': catFilter,
    'maxHistory': maxHistory,
    'searchBarComp': searchBarComp,
    'pureDarkTheme': pureDarkTheme,
    'viewModel': viewModel,
    'clipboardLink': clipboardLink,
    'commentTrans': commentTrans,
    'autoLockTimeOut': autoLockTimeOut,
    'showPageInterval': showPageInterval,
    'orientation': orientation,
    'vibrate': vibrate,
    'tagIntroImgLv': tagIntroImgLv,
    'debugMode': debugMode,
    'debugCount': debugCount,
    'autoRead': autoRead,
    'turnPageInv': turnPageInv,
    'toplist': toplist,
    'tabletLayout': tabletLayout,
    'tabletLayoutValue': tabletLayoutValue,
    'enableTagTranslateCDN': enableTagTranslateCDN,
    'autoSelectProfile': autoSelectProfile,
    'turnPageAnimations': turnPageAnimations,
    'selectProfile': selectProfile,
    'linkRedirect': linkRedirect,
    'viewColumnMode': viewColumnMode,
    'fixedHeightOfListItems': fixedHeightOfListItems,
    'tagTranslateDataUpdateMode': tagTranslateDataUpdateMode,
    'showCommentAvatar': showCommentAvatar,
    'avatarType': avatarType,
    'boringAvatarsType': boringAvatarsType,
    'textAvatarsType': textAvatarsType,
    'avatarBorderRadiusType': avatarBorderRadiusType,
    'enablePHashCheck': enablePHashCheck,
    'enableQRCodeCheck': enableQRCodeCheck,
    'viewFullscreen': viewFullscreen,
    'blurringOfCoverBackground': blurringOfCoverBackground,
    'listViewTagLimit': listViewTagLimit,
    'redirectThumbLink': redirectThumbLink,
    'volumnTurnPage': volumnTurnPage,
    'proxyType': proxyType,
    'proxyHost': proxyHost,
    'proxyPort': proxyPort,
    'proxyUsername': proxyUsername,
    'proxyPassword': proxyPassword,
    'webDAVMaxConnections': webDAVMaxConnections,
    'hideTopBarOnScroll': hideTopBarOnScroll,
    'readViewCompatibleMode': readViewCompatibleMode,
    'translateSearchHistory': translateSearchHistory,
    'nativeHttpClientAdapter': nativeHttpClientAdapter,
    'showComments': showComments,
    'showOnlyUploaderComment': showOnlyUploaderComment,
    'showGalleryTags': showGalleryTags,
    'hideGalleryThumbnails': hideGalleryThumbnails,
    'horizontalThumbnails': horizontalThumbnails,
    'pHashThreshold': pHashThreshold
  };

  EhConfig clone() => EhConfig(
    jpnTitleInGalleryPage: jpnTitleInGalleryPage,
    tagTranslat: tagTranslat,
    tagTranslatVer: tagTranslatVer,
    favoritesOrder: favoritesOrder,
    siteEx: siteEx,
    galleryImgBlur: galleryImgBlur,
    favPicker: favPicker,
    favLongTap: favLongTap,
    lastFavcat: lastFavcat,
    lastShowFavcat: lastShowFavcat,
    lastShowFavTitle: lastShowFavTitle,
    listMode: listMode,
    safeMode: safeMode,
    catFilter: catFilter,
    maxHistory: maxHistory,
    searchBarComp: searchBarComp,
    pureDarkTheme: pureDarkTheme,
    viewModel: viewModel,
    clipboardLink: clipboardLink,
    commentTrans: commentTrans,
    autoLockTimeOut: autoLockTimeOut,
    showPageInterval: showPageInterval,
    orientation: orientation,
    vibrate: vibrate,
    tagIntroImgLv: tagIntroImgLv,
    debugMode: debugMode,
    debugCount: debugCount,
    autoRead: autoRead,
    turnPageInv: turnPageInv,
    toplist: toplist,
    tabletLayout: tabletLayout,
    tabletLayoutValue: tabletLayoutValue,
    enableTagTranslateCDN: enableTagTranslateCDN,
    autoSelectProfile: autoSelectProfile,
    turnPageAnimations: turnPageAnimations,
    selectProfile: selectProfile,
    linkRedirect: linkRedirect,
    viewColumnMode: viewColumnMode,
    fixedHeightOfListItems: fixedHeightOfListItems,
    tagTranslateDataUpdateMode: tagTranslateDataUpdateMode,
    showCommentAvatar: showCommentAvatar,
    avatarType: avatarType,
    boringAvatarsType: boringAvatarsType,
    textAvatarsType: textAvatarsType,
    avatarBorderRadiusType: avatarBorderRadiusType,
    enablePHashCheck: enablePHashCheck,
    enableQRCodeCheck: enableQRCodeCheck,
    viewFullscreen: viewFullscreen,
    blurringOfCoverBackground: blurringOfCoverBackground,
    listViewTagLimit: listViewTagLimit,
    redirectThumbLink: redirectThumbLink,
    volumnTurnPage: volumnTurnPage,
    proxyType: proxyType,
    proxyHost: proxyHost,
    proxyPort: proxyPort,
    proxyUsername: proxyUsername,
    proxyPassword: proxyPassword,
    webDAVMaxConnections: webDAVMaxConnections,
    hideTopBarOnScroll: hideTopBarOnScroll,
    readViewCompatibleMode: readViewCompatibleMode,
    translateSearchHistory: translateSearchHistory,
    nativeHttpClientAdapter: nativeHttpClientAdapter,
    showComments: showComments,
    showOnlyUploaderComment: showOnlyUploaderComment,
    showGalleryTags: showGalleryTags,
    hideGalleryThumbnails: hideGalleryThumbnails,
    horizontalThumbnails: horizontalThumbnails,
    pHashThreshold: pHashThreshold
  );


  EhConfig copyWith({
    Optional<bool?>? jpnTitleInGalleryPage,
    Optional<bool?>? tagTranslat,
    Optional<String?>? tagTranslatVer,
    String? favoritesOrder,
    Optional<bool?>? siteEx,
    Optional<bool?>? galleryImgBlur,
    Optional<bool?>? favPicker,
    Optional<bool?>? favLongTap,
    Optional<String?>? lastFavcat,
    Optional<String?>? lastShowFavcat,
    Optional<String?>? lastShowFavTitle,
    String? listMode,
    Optional<bool?>? safeMode,
    int? catFilter,
    int? maxHistory,
    Optional<bool?>? searchBarComp,
    Optional<bool?>? pureDarkTheme,
    String? viewModel,
    Optional<bool?>? clipboardLink,
    Optional<bool?>? commentTrans,
    Optional<int?>? autoLockTimeOut,
    Optional<bool?>? showPageInterval,
    Optional<String?>? orientation,
    Optional<bool?>? vibrate,
    Optional<String?>? tagIntroImgLv,
    Optional<bool?>? debugMode,
    Optional<int?>? debugCount,
    Optional<bool?>? autoRead,
    Optional<int?>? turnPageInv,
    Optional<String?>? toplist,
    Optional<bool?>? tabletLayout,
    Optional<String?>? tabletLayoutValue,
    Optional<bool?>? enableTagTranslateCDN,
    Optional<bool?>? autoSelectProfile,
    Optional<bool?>? turnPageAnimations,
    Optional<String?>? selectProfile,
    Optional<bool?>? linkRedirect,
    Optional<String?>? viewColumnMode,
    Optional<bool?>? fixedHeightOfListItems,
    Optional<String?>? tagTranslateDataUpdateMode,
    Optional<bool?>? showCommentAvatar,
    Optional<String?>? avatarType,
    Optional<String?>? boringAvatarsType,
    Optional<String?>? textAvatarsType,
    Optional<String?>? avatarBorderRadiusType,
    Optional<bool?>? enablePHashCheck,
    Optional<bool?>? enableQRCodeCheck,
    Optional<bool?>? viewFullscreen,
    Optional<bool?>? blurringOfCoverBackground,
    Optional<int?>? listViewTagLimit,
    Optional<bool?>? redirectThumbLink,
    Optional<bool?>? volumnTurnPage,
    Optional<String?>? proxyType,
    Optional<String?>? proxyHost,
    Optional<int?>? proxyPort,
    Optional<String?>? proxyUsername,
    Optional<String?>? proxyPassword,
    Optional<int?>? webDAVMaxConnections,
    Optional<bool?>? hideTopBarOnScroll,
    Optional<bool?>? readViewCompatibleMode,
    Optional<bool?>? translateSearchHistory,
    Optional<bool?>? nativeHttpClientAdapter,
    Optional<bool?>? showComments,
    Optional<bool?>? showOnlyUploaderComment,
    Optional<bool?>? showGalleryTags,
    Optional<bool?>? hideGalleryThumbnails,
    Optional<bool?>? horizontalThumbnails,
    Optional<int?>? pHashThreshold
  }) => EhConfig(
    jpnTitleInGalleryPage: checkOptional(jpnTitleInGalleryPage, () => this.jpnTitleInGalleryPage),
    tagTranslat: checkOptional(tagTranslat, () => this.tagTranslat),
    tagTranslatVer: checkOptional(tagTranslatVer, () => this.tagTranslatVer),
    favoritesOrder: favoritesOrder ?? this.favoritesOrder,
    siteEx: checkOptional(siteEx, () => this.siteEx),
    galleryImgBlur: checkOptional(galleryImgBlur, () => this.galleryImgBlur),
    favPicker: checkOptional(favPicker, () => this.favPicker),
    favLongTap: checkOptional(favLongTap, () => this.favLongTap),
    lastFavcat: checkOptional(lastFavcat, () => this.lastFavcat),
    lastShowFavcat: checkOptional(lastShowFavcat, () => this.lastShowFavcat),
    lastShowFavTitle: checkOptional(lastShowFavTitle, () => this.lastShowFavTitle),
    listMode: listMode ?? this.listMode,
    safeMode: checkOptional(safeMode, () => this.safeMode),
    catFilter: catFilter ?? this.catFilter,
    maxHistory: maxHistory ?? this.maxHistory,
    searchBarComp: checkOptional(searchBarComp, () => this.searchBarComp),
    pureDarkTheme: checkOptional(pureDarkTheme, () => this.pureDarkTheme),
    viewModel: viewModel ?? this.viewModel,
    clipboardLink: checkOptional(clipboardLink, () => this.clipboardLink),
    commentTrans: checkOptional(commentTrans, () => this.commentTrans),
    autoLockTimeOut: checkOptional(autoLockTimeOut, () => this.autoLockTimeOut),
    showPageInterval: checkOptional(showPageInterval, () => this.showPageInterval),
    orientation: checkOptional(orientation, () => this.orientation),
    vibrate: checkOptional(vibrate, () => this.vibrate),
    tagIntroImgLv: checkOptional(tagIntroImgLv, () => this.tagIntroImgLv),
    debugMode: checkOptional(debugMode, () => this.debugMode),
    debugCount: checkOptional(debugCount, () => this.debugCount),
    autoRead: checkOptional(autoRead, () => this.autoRead),
    turnPageInv: checkOptional(turnPageInv, () => this.turnPageInv),
    toplist: checkOptional(toplist, () => this.toplist),
    tabletLayout: checkOptional(tabletLayout, () => this.tabletLayout),
    tabletLayoutValue: checkOptional(tabletLayoutValue, () => this.tabletLayoutValue),
    enableTagTranslateCDN: checkOptional(enableTagTranslateCDN, () => this.enableTagTranslateCDN),
    autoSelectProfile: checkOptional(autoSelectProfile, () => this.autoSelectProfile),
    turnPageAnimations: checkOptional(turnPageAnimations, () => this.turnPageAnimations),
    selectProfile: checkOptional(selectProfile, () => this.selectProfile),
    linkRedirect: checkOptional(linkRedirect, () => this.linkRedirect),
    viewColumnMode: checkOptional(viewColumnMode, () => this.viewColumnMode),
    fixedHeightOfListItems: checkOptional(fixedHeightOfListItems, () => this.fixedHeightOfListItems),
    tagTranslateDataUpdateMode: checkOptional(tagTranslateDataUpdateMode, () => this.tagTranslateDataUpdateMode),
    showCommentAvatar: checkOptional(showCommentAvatar, () => this.showCommentAvatar),
    avatarType: checkOptional(avatarType, () => this.avatarType),
    boringAvatarsType: checkOptional(boringAvatarsType, () => this.boringAvatarsType),
    textAvatarsType: checkOptional(textAvatarsType, () => this.textAvatarsType),
    avatarBorderRadiusType: checkOptional(avatarBorderRadiusType, () => this.avatarBorderRadiusType),
    enablePHashCheck: checkOptional(enablePHashCheck, () => this.enablePHashCheck),
    enableQRCodeCheck: checkOptional(enableQRCodeCheck, () => this.enableQRCodeCheck),
    viewFullscreen: checkOptional(viewFullscreen, () => this.viewFullscreen),
    blurringOfCoverBackground: checkOptional(blurringOfCoverBackground, () => this.blurringOfCoverBackground),
    listViewTagLimit: checkOptional(listViewTagLimit, () => this.listViewTagLimit),
    redirectThumbLink: checkOptional(redirectThumbLink, () => this.redirectThumbLink),
    volumnTurnPage: checkOptional(volumnTurnPage, () => this.volumnTurnPage),
    proxyType: checkOptional(proxyType, () => this.proxyType),
    proxyHost: checkOptional(proxyHost, () => this.proxyHost),
    proxyPort: checkOptional(proxyPort, () => this.proxyPort),
    proxyUsername: checkOptional(proxyUsername, () => this.proxyUsername),
    proxyPassword: checkOptional(proxyPassword, () => this.proxyPassword),
    webDAVMaxConnections: checkOptional(webDAVMaxConnections, () => this.webDAVMaxConnections),
    hideTopBarOnScroll: checkOptional(hideTopBarOnScroll, () => this.hideTopBarOnScroll),
    readViewCompatibleMode: checkOptional(readViewCompatibleMode, () => this.readViewCompatibleMode),
    translateSearchHistory: checkOptional(translateSearchHistory, () => this.translateSearchHistory),
    nativeHttpClientAdapter: checkOptional(nativeHttpClientAdapter, () => this.nativeHttpClientAdapter),
    showComments: checkOptional(showComments, () => this.showComments),
    showOnlyUploaderComment: checkOptional(showOnlyUploaderComment, () => this.showOnlyUploaderComment),
    showGalleryTags: checkOptional(showGalleryTags, () => this.showGalleryTags),
    hideGalleryThumbnails: checkOptional(hideGalleryThumbnails, () => this.hideGalleryThumbnails),
    horizontalThumbnails: checkOptional(horizontalThumbnails, () => this.horizontalThumbnails),
    pHashThreshold: checkOptional(pHashThreshold, () => this.pHashThreshold),
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is EhConfig && jpnTitleInGalleryPage == other.jpnTitleInGalleryPage && tagTranslat == other.tagTranslat && tagTranslatVer == other.tagTranslatVer && favoritesOrder == other.favoritesOrder && siteEx == other.siteEx && galleryImgBlur == other.galleryImgBlur && favPicker == other.favPicker && favLongTap == other.favLongTap && lastFavcat == other.lastFavcat && lastShowFavcat == other.lastShowFavcat && lastShowFavTitle == other.lastShowFavTitle && listMode == other.listMode && safeMode == other.safeMode && catFilter == other.catFilter && maxHistory == other.maxHistory && searchBarComp == other.searchBarComp && pureDarkTheme == other.pureDarkTheme && viewModel == other.viewModel && clipboardLink == other.clipboardLink && commentTrans == other.commentTrans && autoLockTimeOut == other.autoLockTimeOut && showPageInterval == other.showPageInterval && orientation == other.orientation && vibrate == other.vibrate && tagIntroImgLv == other.tagIntroImgLv && debugMode == other.debugMode && debugCount == other.debugCount && autoRead == other.autoRead && turnPageInv == other.turnPageInv && toplist == other.toplist && tabletLayout == other.tabletLayout && tabletLayoutValue == other.tabletLayoutValue && enableTagTranslateCDN == other.enableTagTranslateCDN && autoSelectProfile == other.autoSelectProfile && turnPageAnimations == other.turnPageAnimations && selectProfile == other.selectProfile && linkRedirect == other.linkRedirect && viewColumnMode == other.viewColumnMode && fixedHeightOfListItems == other.fixedHeightOfListItems && tagTranslateDataUpdateMode == other.tagTranslateDataUpdateMode && showCommentAvatar == other.showCommentAvatar && avatarType == other.avatarType && boringAvatarsType == other.boringAvatarsType && textAvatarsType == other.textAvatarsType && avatarBorderRadiusType == other.avatarBorderRadiusType && enablePHashCheck == other.enablePHashCheck && enableQRCodeCheck == other.enableQRCodeCheck && viewFullscreen == other.viewFullscreen && blurringOfCoverBackground == other.blurringOfCoverBackground && listViewTagLimit == other.listViewTagLimit && redirectThumbLink == other.redirectThumbLink && volumnTurnPage == other.volumnTurnPage && proxyType == other.proxyType && proxyHost == other.proxyHost && proxyPort == other.proxyPort && proxyUsername == other.proxyUsername && proxyPassword == other.proxyPassword && webDAVMaxConnections == other.webDAVMaxConnections && hideTopBarOnScroll == other.hideTopBarOnScroll && readViewCompatibleMode == other.readViewCompatibleMode && translateSearchHistory == other.translateSearchHistory && nativeHttpClientAdapter == other.nativeHttpClientAdapter && showComments == other.showComments && showOnlyUploaderComment == other.showOnlyUploaderComment && showGalleryTags == other.showGalleryTags && hideGalleryThumbnails == other.hideGalleryThumbnails && horizontalThumbnails == other.horizontalThumbnails && pHashThreshold == other.pHashThreshold;

  @override
  int get hashCode => jpnTitleInGalleryPage.hashCode ^ tagTranslat.hashCode ^ tagTranslatVer.hashCode ^ favoritesOrder.hashCode ^ siteEx.hashCode ^ galleryImgBlur.hashCode ^ favPicker.hashCode ^ favLongTap.hashCode ^ lastFavcat.hashCode ^ lastShowFavcat.hashCode ^ lastShowFavTitle.hashCode ^ listMode.hashCode ^ safeMode.hashCode ^ catFilter.hashCode ^ maxHistory.hashCode ^ searchBarComp.hashCode ^ pureDarkTheme.hashCode ^ viewModel.hashCode ^ clipboardLink.hashCode ^ commentTrans.hashCode ^ autoLockTimeOut.hashCode ^ showPageInterval.hashCode ^ orientation.hashCode ^ vibrate.hashCode ^ tagIntroImgLv.hashCode ^ debugMode.hashCode ^ debugCount.hashCode ^ autoRead.hashCode ^ turnPageInv.hashCode ^ toplist.hashCode ^ tabletLayout.hashCode ^ tabletLayoutValue.hashCode ^ enableTagTranslateCDN.hashCode ^ autoSelectProfile.hashCode ^ turnPageAnimations.hashCode ^ selectProfile.hashCode ^ linkRedirect.hashCode ^ viewColumnMode.hashCode ^ fixedHeightOfListItems.hashCode ^ tagTranslateDataUpdateMode.hashCode ^ showCommentAvatar.hashCode ^ avatarType.hashCode ^ boringAvatarsType.hashCode ^ textAvatarsType.hashCode ^ avatarBorderRadiusType.hashCode ^ enablePHashCheck.hashCode ^ enableQRCodeCheck.hashCode ^ viewFullscreen.hashCode ^ blurringOfCoverBackground.hashCode ^ listViewTagLimit.hashCode ^ redirectThumbLink.hashCode ^ volumnTurnPage.hashCode ^ proxyType.hashCode ^ proxyHost.hashCode ^ proxyPort.hashCode ^ proxyUsername.hashCode ^ proxyPassword.hashCode ^ webDAVMaxConnections.hashCode ^ hideTopBarOnScroll.hashCode ^ readViewCompatibleMode.hashCode ^ translateSearchHistory.hashCode ^ nativeHttpClientAdapter.hashCode ^ showComments.hashCode ^ showOnlyUploaderComment.hashCode ^ showGalleryTags.hashCode ^ hideGalleryThumbnails.hashCode ^ horizontalThumbnails.hashCode ^ pHashThreshold.hashCode;
}
