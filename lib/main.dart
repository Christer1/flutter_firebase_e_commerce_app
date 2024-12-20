import 'package:e_commerce_app_with_firebase/app.dart';
import 'package:e_commerce_app_with_firebase/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app_with_firebase/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
Future<void> main() async {
  //Widgets binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  //Getx local storage
  await GetStorage.init();

  //await splash until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);


  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform).then(
        // Inject AuthenticationRepository using GetX
      (FirebaseApp value) => Get.put(AuthenticationRepository())
      );

  runApp(const App());
}
