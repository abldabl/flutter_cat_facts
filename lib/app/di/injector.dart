import 'package:dio/dio.dart';
import 'package:flutter_cat_facts/app/app_router/app_router.dart';
import 'package:flutter_cat_facts/app/constants/api_constants.dart';
import 'package:flutter_cat_facts/data/clients/hive_client.dart';
import 'package:flutter_cat_facts/data/dio/dio_factory.dart';
import 'package:flutter_cat_facts/data/repositories/facts/facts_local_repository.dart';
import 'package:flutter_cat_facts/data/repositories/facts/facts_remote_repository.dart';
import 'package:flutter_cat_facts/data/repositories/facts/facts_repository.dart';
import 'package:flutter_cat_facts/domain/interactors/facts/fetch_fact_interactor.dart';
import 'package:flutter_cat_facts/domain/interactors/facts/fetch_local_fact_list_interactor.dart';
import 'package:flutter_cat_facts/domain/interactors/facts/add_fact_interactor.dart';
import 'package:flutter_cat_facts/presentation/context_activity/bloc/context_activity_bloc.dart';
import 'package:flutter_cat_facts/presentation/fact_screen/bloc/fact_bloc.dart';
import 'package:flutter_cat_facts/presentation/facts_history_screen/bloc/facts_history_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class Injector {
  static void initDependencies() {
    /// Init blocs
    getIt.registerLazySingleton<ContextActivityBloc>(() => ContextActivityBloc());
    getIt.registerLazySingleton<FactBloc>(() => FactBloc());
    getIt.registerLazySingleton<FactsHistoryBloc>(() => FactsHistoryBloc());

    /// Init appRoute
    getIt.registerLazySingleton<AppRouter>(() => AppRouter());

    /// Init Dio
    getIt.registerLazySingleton<Dio>(() => DioFactory().create(ApiConstants.baseApiUrl));

    /// Init repositories
    getIt.registerLazySingleton<FactsRepository>(() => FactsRepository(getIt(), getIt()));
    getIt.registerLazySingleton<FactsRemoteRepository>(() => FactsRemoteRepository(getIt()));
    getIt.registerLazySingleton<FactsLocalRepository>(() => FactsLocalRepository());

    /// Init interactors
    getIt.registerLazySingleton<FetchFactInteractor>(() => FetchFactInteractor());
    getIt.registerLazySingleton<AddFactInteractor>(() => AddFactInteractor());
    getIt.registerLazySingleton<FetchLocalFactListInteractor>(() => FetchLocalFactListInteractor());

    ///Init clients
    getIt.registerSingletonAsync<HiveClient>(() async {
      final hiveClient = HiveClient();
      await hiveClient.init();
      return hiveClient;
    });
  }
}
