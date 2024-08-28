import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  SierraAppAuthUser? initialUser;
  SierraAppAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(SierraAppAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? MyExploreWidget()
          : MySignInOrSignUpPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? MyExploreWidget()
              : MySignInOrSignUpPageWidget(),
        ),
        FFRoute(
          name: 'Explore',
          path: '/explore',
          builder: (context, params) => ExploreWidget(),
        ),
        FFRoute(
          name: 'Wishlist',
          path: '/wishlist',
          builder: (context, params) => WishlistWidget(),
        ),
        FFRoute(
          name: 'Trips',
          path: '/trips',
          builder: (context, params) => TripsWidget(),
        ),
        FFRoute(
          name: 'Inbox',
          path: '/inbox',
          builder: (context, params) => InboxWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: 'ProfilePage',
          path: '/profilePage',
          builder: (context, params) => ProfilePageWidget(),
        ),
        FFRoute(
          name: 'ShowProfile',
          path: '/showProfile',
          builder: (context, params) => ShowProfileWidget(),
        ),
        FFRoute(
          name: 'PersonalInfo',
          path: '/personalInfo',
          builder: (context, params) => PersonalInfoWidget(),
        ),
        FFRoute(
          name: 'Inboxloged',
          path: '/inboxloged',
          builder: (context, params) => InboxlogedWidget(),
        ),
        FFRoute(
          name: 'TripsLoged',
          path: '/tripsLoged',
          builder: (context, params) => TripsLogedWidget(),
        ),
        FFRoute(
          name: 'ReservationConfirmed',
          path: '/reservationConfirmed',
          builder: (context, params) => ReservationConfirmedWidget(),
        ),
        FFRoute(
          name: 'Reservation',
          path: '/reservation',
          builder: (context, params) => ReservationWidget(),
        ),
        FFRoute(
          name: 'Review',
          path: '/review',
          builder: (context, params) => ReviewWidget(),
        ),
        FFRoute(
          name: 'ReviewTwo',
          path: '/reviewTwo',
          builder: (context, params) => ReviewTwoWidget(),
        ),
        FFRoute(
          name: 'ReviewThree',
          path: '/reviewThree',
          builder: (context, params) => ReviewThreeWidget(),
        ),
        FFRoute(
          name: 'ReviewFour',
          path: '/reviewFour',
          builder: (context, params) => ReviewFourWidget(),
        ),
        FFRoute(
          name: 'ReviewFive',
          path: '/reviewFive',
          builder: (context, params) => ReviewFiveWidget(),
        ),
        FFRoute(
          name: 'ReviewSix',
          path: '/reviewSix',
          builder: (context, params) => ReviewSixWidget(),
        ),
        FFRoute(
          name: 'ReviewSeven',
          path: '/reviewSeven',
          builder: (context, params) => ReviewSevenWidget(),
        ),
        FFRoute(
          name: 'ReviewEight',
          path: '/reviewEight',
          builder: (context, params) => ReviewEightWidget(),
        ),
        FFRoute(
          name: 'ReviewNine',
          path: '/reviewNine',
          builder: (context, params) => ReviewNineWidget(),
        ),
        FFRoute(
          name: 'ReviewTen',
          path: '/reviewTen',
          builder: (context, params) => ReviewTenWidget(),
        ),
        FFRoute(
          name: 'ReviewDone',
          path: '/reviewDone',
          builder: (context, params) => ReviewDoneWidget(),
        ),
        FFRoute(
          name: 'LookingForThings',
          path: '/lookingForThings',
          builder: (context, params) => LookingForThingsWidget(),
        ),
        FFRoute(
          name: 'Notifications',
          path: '/notifications',
          builder: (context, params) => NotificationsWidget(),
        ),
        FFRoute(
          name: 'FindingThings',
          path: '/findingThings',
          builder: (context, params) => FindingThingsWidget(),
        ),
        FFRoute(
          name: 'ConfirmAndPay',
          path: '/confirmAndPay',
          builder: (context, params) => ConfirmAndPayWidget(),
        ),
        FFRoute(
          name: 'NewJourney',
          path: '/newJourney',
          builder: (context, params) => NewJourneyWidget(),
        ),
        FFRoute(
          name: 'GuideBooks',
          path: '/guideBooks',
          builder: (context, params) => GuideBooksWidget(),
        ),
        FFRoute(
          name: 'EarnMoney',
          path: '/earnMoney',
          builder: (context, params) => EarnMoneyWidget(),
        ),
        FFRoute(
          name: 'SiriSetting',
          path: '/siriSetting',
          builder: (context, params) => SiriSettingWidget(),
        ),
        FFRoute(
          name: 'PrivacyAndSharing',
          path: '/privacyAndSharing',
          builder: (context, params) => PrivacyAndSharingWidget(),
        ),
        FFRoute(
          name: 'NeighborhoodSupport',
          path: '/neighborhoodSupport',
          builder: (context, params) => NeighborhoodSupportWidget(),
        ),
        FFRoute(
          name: 'ShareYourFeedback',
          path: '/shareYourFeedback',
          builder: (context, params) => ShareYourFeedbackWidget(),
        ),
        FFRoute(
          name: 'Setup',
          path: '/setup',
          builder: (context, params) => SetupWidget(),
        ),
        FFRoute(
          name: 'Help',
          path: '/help',
          builder: (context, params) => HelpWidget(),
        ),
        FFRoute(
          name: 'PaymentsAndPayouts',
          path: '/paymentsAndPayouts',
          builder: (context, params) => PaymentsAndPayoutsWidget(),
        ),
        FFRoute(
          name: 'EditYourPayment',
          path: '/editYourPayment',
          builder: (context, params) => EditYourPaymentWidget(),
        ),
        FFRoute(
          name: 'YourPayments',
          path: '/yourPayments',
          builder: (context, params) => YourPaymentsWidget(),
        ),
        FFRoute(
          name: 'CreditAndCoupons',
          path: '/creditAndCoupons',
          builder: (context, params) => CreditAndCouponsWidget(),
        ),
        FFRoute(
          name: 'HowYouPaid',
          path: '/howYouPaid',
          builder: (context, params) => HowYouPaidWidget(),
        ),
        FFRoute(
          name: 'TransactionHistory',
          path: '/transactionHistory',
          builder: (context, params) => TransactionHistoryWidget(),
        ),
        FFRoute(
          name: 'StepsAway--Test',
          path: '/stepsAwayTest',
          builder: (context, params) => StepsAwayTestWidget(),
        ),
        FFRoute(
          name: 'SafetyCenter',
          path: '/safetyCenter',
          builder: (context, params) => SafetyCenterWidget(),
        ),
        FFRoute(
          name: 'Translation',
          path: '/translation',
          builder: (context, params) => TranslationWidget(),
        ),
        FFRoute(
          name: 'StartAppartmentRental',
          path: '/startAppartmentRental',
          builder: (context, params) => StartAppartmentRentalWidget(),
        ),
        FFRoute(
          name: 'LoginDevices',
          path: '/loginDevices',
          builder: (context, params) => LoginDevicesWidget(),
        ),
        FFRoute(
          name: 'TurnOnNotification',
          path: '/turnOnNotification',
          builder: (context, params) => TurnOnNotificationWidget(),
        ),
        FFRoute(
          name: 'CreateWishlist',
          path: '/createWishlist',
          builder: (context, params) => CreateWishlistWidget(),
        ),
        FFRoute(
          name: 'WishlistList',
          path: '/wishlistList',
          builder: (context, params) => WishlistListWidget(),
        ),
        FFRoute(
          name: 'ItemDetails',
          path: '/itemDetails',
          builder: (context, params) => ItemDetailsWidget(),
        ),
        FFRoute(
          name: 'StepsAway',
          path: '/stepsAway',
          builder: (context, params) => StepsAwayWidget(),
        ),
        FFRoute(
          name: 'MyProfile',
          path: '/myProfile',
          builder: (context, params) => MyProfileWidget(),
        ),
        FFRoute(
          name: 'MyExplore',
          path: '/myExplore',
          builder: (context, params) => MyExploreWidget(),
        ),
        FFRoute(
          name: 'MyAuthPage',
          path: '/myAuthPage',
          builder: (context, params) => MyAuthPageWidget(),
        ),
        FFRoute(
          name: 'MySignInOrSignUpPage',
          path: '/mySignInOrSignUpPage',
          builder: (context, params) => MySignInOrSignUpPageWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/mySignInOrSignUpPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primary,
                  child: Center(
                    child: Image.asset(
                      'assets/images/fw-logo_symbol-white.png',
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 250),
      );
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
