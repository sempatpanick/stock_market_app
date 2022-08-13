// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuoteModel _$QuoteModelFromJson(Map<String, dynamic> json) => QuoteModel(
      quoteResponse: QuoteResponseModel.fromJson(
          json['quoteResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuoteModelToJson(QuoteModel instance) =>
    <String, dynamic>{
      'quoteResponse': instance.quoteResponse,
    };

QuoteResponseModel _$QuoteResponseModelFromJson(Map<String, dynamic> json) =>
    QuoteResponseModel(
      result: (json['result'] as List<dynamic>)
          .map((e) =>
              QuoteResponseResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuoteResponseModelToJson(QuoteResponseModel instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

QuoteResponseResultModel _$QuoteResponseResultModelFromJson(
        Map<String, dynamic> json) =>
    QuoteResponseResultModel(
      language: json['language'] as String,
      region: json['region'] as String,
      quoteType: json['quoteType'] as String,
      typeDisp: json['typeDisp'] as String?,
      quoteSourceName: json['quoteSourceName'] as String?,
      triggerable: json['triggerable'] as bool,
      customPriceAlertConfidence: json['customPriceAlertConfidence'] as String?,
      currency: json['currency'] as String?,
      exchangeTimezoneName: json['exchangeTimezoneName'] as String?,
      exchangeTimezoneShortName: json['exchangeTimezoneShortName'] as String?,
      esgPopulated: json['esgPopulated'] as bool,
      market: json['market'] as String?,
      exchange: json['exchange'] as String?,
      gmtOffSetMilliseconds: json['gmtOffSetMilliseconds'] as int?,
      messageBoardId: json['messageBoardId'] as String?,
      shortName: json['shortName'] as String?,
      marketState: json['marketState'] as String?,
      longName: json['longName'] as String?,
      tradeable: json['tradeable'] as bool,
      sharesOutstanding: json['sharesOutstanding'] as int?,
      bookValue: (json['bookValue'] as num?)?.toDouble(),
      fiftyDayAverage: (json['fiftyDayAverage'] as num?)?.toDouble(),
      fiftyDayAverageChange:
          (json['fiftyDayAverageChange'] as num?)?.toDouble(),
      fiftyDayAverageChangePercent:
          (json['fiftyDayAverageChangePercent'] as num?)?.toDouble(),
      twoHundredDayAverage: (json['twoHundredDayAverage'] as num?)?.toDouble(),
      twoHundredDayAverageChange:
          (json['twoHundredDayAverageChange'] as num?)?.toDouble(),
      twoHundredDayAverageChangePercent:
          (json['twoHundredDayAverageChangePercent'] as num?)?.toDouble(),
      marketCap: json['marketCap'] as int?,
      forwardPE: (json['forwardPE'] as num?)?.toDouble(),
      priceToBook: (json['priceToBook'] as num?)?.toDouble(),
      sourceInterval: json['sourceInterval'] as int?,
      exchangeDataDelayedBy: json['exchangeDataDelayedBy'] as int?,
      pageViewGrowthWeekly: (json['pageViewGrowthWeekly'] as num?)?.toDouble(),
      averageAnalystRating: json['averageAnalystRating'] as String?,
      preMarketPrice: (json['preMarketPrice'] as num?)?.toDouble(),
      regularMarketChange: (json['regularMarketChange'] as num?)?.toDouble(),
      regularMarketChangePercent:
          (json['regularMarketChangePercent'] as num?)?.toDouble(),
      regularMarketTime: json['regularMarketTime'] as int?,
      regularMarketPrice: (json['regularMarketPrice'] as num?)?.toDouble(),
      regularMarketDayHigh: (json['regularMarketDayHigh'] as num?)?.toDouble(),
      regularMarketDayRange: json['regularMarketDayRange'] as String?,
      regularMarketDayLow: (json['regularMarketDayLow'] as num?)?.toDouble(),
      regularMarketVolume: json['regularMarketVolume'] as int?,
      regularMarketPreviousClose:
          (json['regularMarketPreviousClose'] as num?)?.toDouble(),
      bid: (json['bid'] as num?)?.toDouble(),
      ask: (json['ask'] as num?)?.toDouble(),
      bidSize: json['bidSize'] as int?,
      askSize: json['askSize'] as int?,
      fullExchangeName: json['fullExchangeName'] as String?,
      financialCurrency: json['financialCurrency'] as String?,
      regularMarketOpen: (json['regularMarketOpen'] as num?)?.toDouble(),
      averageDailyVolume3Month: json['averageDailyVolume3Month'] as int?,
      averageDailyVolume10Day: json['averageDailyVolume10Day'] as int?,
      fiftyTwoWeekLowChange:
          (json['fiftyTwoWeekLowChange'] as num?)?.toDouble(),
      fiftyTwoWeekLowChangePercent:
          (json['fiftyTwoWeekLowChangePercent'] as num?)?.toDouble(),
      fiftyTwoWeekRange: json['fiftyTwoWeekRange'] as String?,
      fiftyTwoWeekHighChange:
          (json['fiftyTwoWeekHighChange'] as num?)?.toDouble(),
      fiftyTwoWeekHighChangePercent:
          (json['fiftyTwoWeekHighChangePercent'] as num?)?.toDouble(),
      fiftyTwoWeekLow: (json['fiftyTwoWeekLow'] as num?)?.toDouble(),
      fiftyTwoWeekHigh: (json['fiftyTwoWeekHigh'] as num?)?.toDouble(),
      earningsTimestamp: json['earningsTimestamp'] as int?,
      earningsTimestampStart: json['earningsTimestampStart'] as int?,
      earningsTimestampEnd: json['earningsTimestampEnd'] as int?,
      trailingAnnualDividendRate:
          (json['trailingAnnualDividendRate'] as num?)?.toDouble(),
      trailingPE: (json['trailingPE'] as num?)?.toDouble(),
      trailingAnnualDividendYield:
          (json['trailingAnnualDividendYield'] as num?)?.toDouble(),
      epsTrailingTwelveMonths:
          (json['epsTrailingTwelveMonths'] as num?)?.toDouble(),
      epsForward: (json['epsForward'] as num?)?.toDouble(),
      firstTradeDateMilliseconds: json['firstTradeDateMilliseconds'] as int?,
      priceHint: json['priceHint'] as int?,
      preMarketChange: (json['preMarketChange'] as num?)?.toDouble(),
      preMarketChangePercent:
          (json['preMarketChangePercent'] as num?)?.toDouble(),
      preMarketTime: json['preMarketTime'] as int?,
      displayName: json['displayName'] as String?,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$QuoteResponseResultModelToJson(
        QuoteResponseResultModel instance) =>
    <String, dynamic>{
      'language': instance.language,
      'region': instance.region,
      'quoteType': instance.quoteType,
      'typeDisp': instance.typeDisp,
      'quoteSourceName': instance.quoteSourceName,
      'triggerable': instance.triggerable,
      'customPriceAlertConfidence': instance.customPriceAlertConfidence,
      'currency': instance.currency,
      'exchangeTimezoneName': instance.exchangeTimezoneName,
      'exchangeTimezoneShortName': instance.exchangeTimezoneShortName,
      'esgPopulated': instance.esgPopulated,
      'market': instance.market,
      'exchange': instance.exchange,
      'gmtOffSetMilliseconds': instance.gmtOffSetMilliseconds,
      'messageBoardId': instance.messageBoardId,
      'shortName': instance.shortName,
      'marketState': instance.marketState,
      'longName': instance.longName,
      'tradeable': instance.tradeable,
      'sharesOutstanding': instance.sharesOutstanding,
      'bookValue': instance.bookValue,
      'fiftyDayAverage': instance.fiftyDayAverage,
      'fiftyDayAverageChange': instance.fiftyDayAverageChange,
      'fiftyDayAverageChangePercent': instance.fiftyDayAverageChangePercent,
      'twoHundredDayAverage': instance.twoHundredDayAverage,
      'twoHundredDayAverageChange': instance.twoHundredDayAverageChange,
      'twoHundredDayAverageChangePercent':
          instance.twoHundredDayAverageChangePercent,
      'marketCap': instance.marketCap,
      'forwardPE': instance.forwardPE,
      'priceToBook': instance.priceToBook,
      'sourceInterval': instance.sourceInterval,
      'exchangeDataDelayedBy': instance.exchangeDataDelayedBy,
      'pageViewGrowthWeekly': instance.pageViewGrowthWeekly,
      'averageAnalystRating': instance.averageAnalystRating,
      'preMarketPrice': instance.preMarketPrice,
      'regularMarketChange': instance.regularMarketChange,
      'regularMarketChangePercent': instance.regularMarketChangePercent,
      'regularMarketTime': instance.regularMarketTime,
      'regularMarketPrice': instance.regularMarketPrice,
      'regularMarketDayHigh': instance.regularMarketDayHigh,
      'regularMarketDayRange': instance.regularMarketDayRange,
      'regularMarketDayLow': instance.regularMarketDayLow,
      'regularMarketVolume': instance.regularMarketVolume,
      'regularMarketPreviousClose': instance.regularMarketPreviousClose,
      'bid': instance.bid,
      'ask': instance.ask,
      'bidSize': instance.bidSize,
      'askSize': instance.askSize,
      'fullExchangeName': instance.fullExchangeName,
      'financialCurrency': instance.financialCurrency,
      'regularMarketOpen': instance.regularMarketOpen,
      'averageDailyVolume3Month': instance.averageDailyVolume3Month,
      'averageDailyVolume10Day': instance.averageDailyVolume10Day,
      'fiftyTwoWeekLowChange': instance.fiftyTwoWeekLowChange,
      'fiftyTwoWeekLowChangePercent': instance.fiftyTwoWeekLowChangePercent,
      'fiftyTwoWeekRange': instance.fiftyTwoWeekRange,
      'fiftyTwoWeekHighChange': instance.fiftyTwoWeekHighChange,
      'fiftyTwoWeekHighChangePercent': instance.fiftyTwoWeekHighChangePercent,
      'fiftyTwoWeekLow': instance.fiftyTwoWeekLow,
      'fiftyTwoWeekHigh': instance.fiftyTwoWeekHigh,
      'earningsTimestamp': instance.earningsTimestamp,
      'earningsTimestampStart': instance.earningsTimestampStart,
      'earningsTimestampEnd': instance.earningsTimestampEnd,
      'trailingAnnualDividendRate': instance.trailingAnnualDividendRate,
      'trailingPE': instance.trailingPE,
      'trailingAnnualDividendYield': instance.trailingAnnualDividendYield,
      'epsTrailingTwelveMonths': instance.epsTrailingTwelveMonths,
      'epsForward': instance.epsForward,
      'firstTradeDateMilliseconds': instance.firstTradeDateMilliseconds,
      'priceHint': instance.priceHint,
      'preMarketChange': instance.preMarketChange,
      'preMarketChangePercent': instance.preMarketChangePercent,
      'preMarketTime': instance.preMarketTime,
      'displayName': instance.displayName,
      'symbol': instance.symbol,
    };
