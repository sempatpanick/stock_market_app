import 'package:dartz/dartz.dart';
import 'package:stock_market_app/domain/entities/quote.dart';
import 'package:stock_market_app/domain/repositories/stock_market_repository.dart';

import '../../common/failure.dart';

class GetQuotesMarket {
  final StockMarketRepository repository;

  GetQuotesMarket(this.repository);

  Future<Either<Failure, Quote>> execute({required String symbols}) {
    return repository.getQuotesMarket(symbols);
  }
}
