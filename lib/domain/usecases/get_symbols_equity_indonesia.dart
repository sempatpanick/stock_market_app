import 'package:dartz/dartz.dart';

import '../../common/failure.dart';
import '../entities/equity_indonesia.dart';
import '../repositories/stock_market_repository.dart';

class GetSymbolsEquityIndonesia {
  final StockMarketRepository repository;

  GetSymbolsEquityIndonesia(this.repository);

  Future<Either<Failure, EquityIndonesia>> execute() {
    return repository.getSymbolsEquityIndonesia();
  }
}
