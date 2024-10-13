import 'package:firebase_core/firebase_core.dart';

enum Flavor {
  prod,
  dev,
}

class F {
  static late Flavor appFlavor;

  static String get name => appFlavor.name;
  static String get collectionPrefix {
    switch (appFlavor) {
      case Flavor.dev:
        return 'dev_';
      case Flavor.prod:
        return '';
      default:
        return '';
    }
  }

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Prod App';
      case Flavor.dev:
        return 'Dev App';
      default:
        return 'title';
    }
  }

  static FirebaseOptions get firebase {
    return const FirebaseOptions(
      apiKey: 'AIzaSyCDaMBaiVeUBf2OhwLXqqxI8GVSV0zf7So',
      appId: '1:231676321900:android:be9fb6e99c084138b13849',
      messagingSenderId: '231676321900',
      projectId: 'tmh-flavor',
      storageBucket: 'tmh-flavor.appspot.com',
    );
  }
}
