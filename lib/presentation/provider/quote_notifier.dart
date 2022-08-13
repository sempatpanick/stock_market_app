import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stock_market_app/domain/usecases/get_quotes_market.dart';
import 'package:stock_market_app/domain/usecases/get_symbols_equity_indonesia.dart';

import '../../common/state_enum.dart';
import '../../domain/entities/quote.dart';

class QuoteNotifier extends ChangeNotifier {
  final GetQuotesMarket getQuotesMarket;
  final GetSymbolsEquityIndonesia getSymbolsEquityIndonesia;

  QuoteNotifier({
    required this.getQuotesMarket,
    required this.getSymbolsEquityIndonesia,
  });

  int _categoryIndex = 0;
  int get categoryIndex => _categoryIndex;

  RequestState _state = RequestState.empty;
  RequestState get state => _state;

  String _message = '';
  String get message => _message;

  final List<QuoteResponseResult> _quotes = [];
  List<QuoteResponseResult> get quotes => _quotes;

  bool _statusRealtime = true;
  String _symbols = "";

  final List<String> _category = [
    'IHSG Top 100 Gainers by %',
    'Nasdaq Top 100 Gainers by %',
  ];
  List<String> get category => _category;

  bool setCategoryIndex(int index) {
    if (_categoryIndex == index) {
      return false;
    }
    _categoryIndex = index;
    getStocks();

    return true;
  }

  Future<void> getStocks() async {
    if (_categoryIndex == 0) {
      await fetchSymbolsEquityIndonesia();
      await fetchQuotes();
    } else if (_categoryIndex == 1) {
      await getSymbolsNasdaq();
      await fetchQuotes();
    }
  }

  List<QuoteResponseResult> getTop100Gainers(List<QuoteResponseResult> stocks) {
    stocks.sort(
        (a, b) => b.regularMarketChangePercent?.compareTo(a.regularMarketChangePercent ?? 0) ?? 0);
    return stocks.sublist(0, 100);
  }

  Future<void> getSymbolsNasdaq() async {
    final String raw = await rootBundle.loadString('assets/csv/symbols.csv');
    List<List<dynamic>> rowsAsListOfValues = const CsvToListConverter().convert(raw);

    _symbols = '';

    for (int i = 5500; i < rowsAsListOfValues.length; i++) {
      if (rowsAsListOfValues[i][0].toString().contains('^') ||
          rowsAsListOfValues[i][0].toString().isEmpty) {
        continue;
      }
      if (i == 1) {
        _symbols += rowsAsListOfValues[i][0];
      } else {
        _symbols += ',${rowsAsListOfValues[i][0]}';
      }
    }
  }

  Future<void> fetchSymbolsEquityIndonesia() async {
    final result = await getSymbolsEquityIndonesia.execute();

    _symbols = '';
    result.fold((failure) {}, (success) {
      for (int i = 0; i < success.data.length; i++) {
        if (i == 0) {
          _symbols += '${success.data[i].code}.JK';
        } else {
          _symbols += ",${success.data[i].code}.JK";
        }
      }
    });
  }

  Future<void> fetchQuotes() async {
    _state = RequestState.loading;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 500));
    while (_statusRealtime) {
      await Future.delayed(const Duration(milliseconds: 500), () async {
        final result = await getQuotesMarket.execute(
          symbols: _symbols,
        );

        result.fold((failure) {
          _state = RequestState.error;
          _message = failure.message;
          notifyListeners();
        }, (success) {
          _quotes.clear();
          if (_categoryIndex == 0) {
            _quotes.addAll(getTop100Gainers(success.quoteResponse.result));
          } else if (_categoryIndex == 1) {
            _quotes.addAll(getTop100Gainers(success.quoteResponse.result));
          }
          notifyListeners();
          _state = RequestState.loaded;
          notifyListeners();
        });
      });
    }
    if (!_statusRealtime) {
      _state = RequestState.loaded;
      notifyListeners();
    }
  }

  void setStatusRealtime(bool status) {
    _statusRealtime = status;
    fetchQuotes();
    notifyListeners();
  }
}
