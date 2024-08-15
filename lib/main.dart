import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'application.dart';
import 'core/getit.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await setup();
  runApp(const Application());
}
