import 'package:dental_control/layout/auth/auth_layout.dart';
import 'package:dental_control/router/router.dart';
import 'package:dental_control/services/services.dart';
import 'package:dental_control/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/provider.dart';

void main() async {
  Flurorouter.configureRoutes();
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(lazy: false, create: (_) => SideMenuProvider()),
    ], child: const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Consultorio Dashboard',
      initialRoute: '/',
      scaffoldMessengerKey: NotificationsService.messagerKey,
      onGenerateRoute: Flurorouter.router.generator,
      builder: (_, child) {
        return Overlay(
          initialEntries: [
            OverlayEntry(builder: (BuildContext context) {
              return AuthLayout(
                child: child!,
              );
            })
          ],
        );
      },
      theme: ThemeData.light().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: CustomColors.primaryColor,
              )),
    );
  }
}
