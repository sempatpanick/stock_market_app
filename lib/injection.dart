import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:stock_market_app/domain/repositories/stock_market_repository.dart';
import 'package:stock_market_app/domain/usecases/get_quotes_market.dart';
import 'package:stock_market_app/domain/usecases/get_symbols_equity_indonesia.dart';
import 'package:stock_market_app/presentation/provider/quote_notifier.dart';

import 'data/datasources/stock_market_local_data_source.dart';
import 'data/datasources/stock_market_remote_data_source.dart';
import 'data/repositories/stock_market_repository_impl.dart';

final locator = GetIt.instance;

void init() {
  // provider
  locator.registerFactory(
    () => QuoteNotifier(
      getQuotesMarket: locator(),
      getSymbolsEquityIndonesia: locator(),
    ),
  );

  // use case
  locator.registerLazySingleton(() => GetQuotesMarket(locator()));
  locator.registerLazySingleton(() => GetSymbolsEquityIndonesia(locator()));

  //repository
  locator.registerLazySingleton<StockMarketRepository>(
    () => StockMarketRepositoryImpl(
      remoteDataSource: locator(),
      localDataSource: locator(),
    ),
  );

  // data sources
  locator.registerLazySingleton<StockMarketRemoteDataSource>(
    () => StockMarketRemoteDataSourceImpl(
      client: locator(),
    ),
  );

  locator.registerLazySingleton<StockMarketLocalDataSource>(
    () => StockMarketLocalDataSourceImpl(),
  );

  // helper

  // external
  locator.registerLazySingleton(() => http.Client());
}
