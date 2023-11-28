import 'package:artwave/drawer/feedback_page.dart';
import 'package:artwave/drawer/profile.dart';
import 'package:artwave/drawer/show/images.dart';
import 'package:artwave/drawer/show/vedios.dart';
import 'package:artwave/responsive_tabs/desktop_tab.dart';
import 'package:artwave/responsive_tabs/mobile_tab.dart';
import 'package:artwave/responsive_tabs/responsive_layouts.dart';
import 'package:artwave/responsive_tabs/tablet_tab.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Artwaves',
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        desktopScaffold: DesktopScaffold(),
        tabletScaffold: TabletScaffold(),
      ),
      routes: {
        '/feedback': (context) => const FeedBack(),
        '/Images_page': (context) => const Images_page(),
        '/VedioPage': (context) => VideoPage(),
        '/profilepage': (context) => const ProfilePage(),
      },
    );
  }
}
 