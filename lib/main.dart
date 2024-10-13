import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flavor/flavors.dart';
import 'package:flutter/material.dart';

import 'app.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: F.firebase);
  //  FirebaseFirestore.instance.settings = Settings(
  //   host: ,
  //     persistenceEnabled: true,
  //     cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
  //   );
  runApp(const App());
}
