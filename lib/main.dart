import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/app_widget.dart';
import 'package:frontend/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configurationInjection(Env.sit);
  await Firebase.initializeApp();
  runApp(AppWidget());
}
