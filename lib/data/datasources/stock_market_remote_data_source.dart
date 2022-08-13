import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stock_market_app/data/models/quote_model.dart';

import '../../common/exception.dart';

abstract class StockMarketRemoteDataSource {
  Future<QuoteModel> getQuotesMarket(String symbols);
}

class StockMarketRemoteDataSourceImpl implements StockMarketRemoteDataSource {
  static const BASE_URL_QUERY_1 = 'https://query1.finance.yahoo.com';

  final http.Client client;

  StockMarketRemoteDataSourceImpl({required this.client});

  @override
  Future<QuoteModel> getQuotesMarket(String symbols) async {
    final response =
        await client.get(Uri.parse('$BASE_URL_QUERY_1/v7/finance/quote?symbols=$symbols'));

    if (response.statusCode == 200) {
      return QuoteModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
