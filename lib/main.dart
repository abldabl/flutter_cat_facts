import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cat_facts/app/app_router/app_router.dart';
import 'package:flutter_cat_facts/app/app_router/app_router.gr.dart';
import 'package:flutter_cat_facts/app/constants/text_constants.dart';
import 'package:flutter_cat_facts/app/di/injector.dart';
import 'package:flutter_cat_facts/generated/l10n.dart';
import 'package:flutter_cat_facts/presentation/context/bloc/context_activity_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Injector.initDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    return BlocProvider(
      create: (context) => getIt<ContextActivityBloc>(),
      child: MaterialApp.router(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: TextConstants.appTitle,
        theme: ThemeData(primarySwatch: Colors.blue),
        routerConfig: appRouter.config(initialRoutes: [const FactRoute()]),
      ),
    );
  }
}
