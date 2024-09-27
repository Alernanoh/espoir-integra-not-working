import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/config/constants/enviroment.dart';
import 'package:integra_espoir/config/database/isar_all.dart';
import 'package:integra_espoir/config/router/app_router.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ByteData data = await PlatformAssetBundle().load('assets/ca/espoir_org_ec.pem');
  SecurityContext.defaultContext.setTrustedCertificatesBytes(data.buffer.asUint8List());

  Intl.defaultLocale = "es_ES";
  initializeDateFormatting('es_ES', null);

  openAllDB();

  await Environment.initEnvironment();

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: Environment.apiUrl == "https://sis.espoir.org.ec/api" ? false : true,
      routerConfig: appRouter,
      theme: AppTheme().getTheme(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale("en", "US"), Locale("es", "ES")],
    );
  }
}
