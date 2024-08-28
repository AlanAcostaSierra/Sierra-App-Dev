import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class SierraAppAuthUser {
  SierraAppAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<SierraAppAuthUser> sierraAppAuthUserSubject =
    BehaviorSubject.seeded(SierraAppAuthUser(loggedIn: false));
Stream<SierraAppAuthUser> sierraAppAuthUserStream() => sierraAppAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
