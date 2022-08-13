import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:stock_market_app/data/models/equity_indonesia_model.dart';
import 'package:stock_market_app/domain/entities/equity_indonesia.dart';
import 'package:stock_market_app/domain/repositories/stock_market_repository.dart';

import '../../common/exception.dart';
import '../../common/failure.dart';
import '../../domain/entities/quote.dart';
import '../datasources/stock_market_local_data_source.dart';
import '../datasources/stock_market_remote_data_source.dart';

class StockMarketRepositoryImpl implements StockMarketRepository {
  final StockMarketRemoteDataSource remoteDataSource;
  final StockMarketLocalDataSource localDataSource;

  StockMarketRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, Quote>> getQuotesMarket(String symbols) async {
    try {
      final result = await remoteDataSource.getQuotesMarket(symbols);

      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, EquityIndonesia>> getSymbolsEquityIndonesia() async {
    try {
      final String raw = await rootBundle.loadString('assets/json/symbols_equity_indonesia.json');
      final EquityIndonesiaModel result = EquityIndonesiaModel.fromJson(json.decode(raw));

      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
