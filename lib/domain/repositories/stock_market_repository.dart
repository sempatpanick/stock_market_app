import 'package:dartz/dartz.dart';

import '../../common/failure.dart';
import '../entities/equity_indonesia.dart';
import '../entities/quote.dart';

abstract class StockMarketRepository {
  Future<Either<Failure, Quote>> getQuotesMarket(String symbols);
  Future<Either<Failure, EquityIndonesia>> getSymbolsEquityIndonesia();
}
