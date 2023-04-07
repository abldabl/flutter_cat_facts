import 'package:flutter_cat_facts/app/app_router/app_router.dart';
import 'package:flutter_cat_facts/presentation/context/bloc/context_activity_bloc.dart';
import 'package:flutter_cat_facts/presentation/fact_screen/bloc/fact_bloc.dart';
import 'package:flutter_cat_facts/presentation/facts_history_screen/bloc/facts_history_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class Injector {
  static void initDependencies() {
    ///Init blocs
    getIt.registerLazySingleton<ContextActivityBloc>(() => ContextActivityBloc());
    getIt.registerLazySingleton<FactBloc>(() => FactBloc());
    getIt.registerLazySingleton<FactsHistoryBloc>(() => FactsHistoryBloc());

    ///Init appRoute
    getIt.registerLazySingleton<AppRouter>(() => AppRouter());
  }
}
