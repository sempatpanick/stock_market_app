import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/quote.dart';

part 'quote_model.g.dart';

@JsonSerializable()
class QuoteModel extends Equatable {
  final QuoteResponseModel quoteResponse;

  const QuoteModel({
    required this.quoteResponse,
  });

  factory QuoteModel.fromJson(Map<String, dynamic> json) => _$QuoteModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteModelToJson(this);

  Quote toEntity() {
    return Quote(quoteResponse: quoteResponse.toEntity());
  }

  @override
  List<Object?> get props => [quoteResponse];
}

@JsonSerializable()
class QuoteResponseModel extends Equatable {
  final List<QuoteResponseResultModel> result;

  const QuoteResponseModel({
    required this.result,
  });

  factory QuoteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuoteResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteResponseModelToJson(this);

  QuoteResponse toEntity() {
    return QuoteResponse(result: result.map((result) => result.toEntity()).toList());
  }

  @override
  List<Object?> get props => [result];
}

@JsonSerializable()
class QuoteResponseResultModel extends Equatable {
  final String language;
  final String region;
  final String quoteType;
  final String? typeDisp;
  final String? quoteSourceName;
  final bool triggerable;
  final String? customPriceAlertConfidence;
  final String? currency;
  final String? exchangeTimezoneName;
  final String? exchangeTimezoneShortName;
  final bool esgPopulated;
  final String? market;
  final String? exchange;
  final int? gmtOffSetMilliseconds;
  final String? messageBoardId;
  final String? shortName;
  final String? marketState;
  final String? longName;
  final bool tradeable;
  final int? sharesOutstanding;
  final double? bookValue;
  final double? fiftyDayAverage;
  final double? fiftyDayAverageChange;
  final double? fiftyDayAverageChangePercent;
  final double? twoHundredDayAverage;
  final double? twoHundredDayAverageChange;
  final double? twoHundredDayAverageChangePercent;
  final int? marketCap;
  final double? forwardPE;
  final double? priceToBook;
  final int? sourceInterval;
  final int? exchangeDataDelayedBy;
  final double? pageViewGrowthWeekly;
  final String? averageAnalystRating;
  final double? preMarketPrice;
  final double? regularMarketChange;
  final double? regularMarketChangePercent;
  final int? regularMarketTime;
  final double? regularMarketPrice;
  final double? regularMarketDayHigh;
  final String? regularMarketDayRange;
  final double? regularMarketDayLow;
  final int? regularMarketVolume;
  final double? regularMarketPreviousClose;
  final double? bid;
  final double? ask;
  final int? bidSize;
  final int? askSize;
  final String? fullExchangeName;
  final String? financialCurrency;
  final double? regularMarketOpen;
  final int? averageDailyVolume3Month;
  final int? averageDailyVolume10Day;
  final double? fiftyTwoWeekLowChange;
  final double? fiftyTwoWeekLowChangePercent;
  final String? fiftyTwoWeekRange;
  final double? fiftyTwoWeekHighChange;
  final double? fiftyTwoWeekHighChangePercent;
  final double? fiftyTwoWeekLow;
  final double? fiftyTwoWeekHigh;
  final int? earningsTimestamp;
  final int? earningsTimestampStart;
  final int? earningsTimestampEnd;
  final double? trailingAnnualDividendRate;
  final double? trailingPE;
  final double? trailingAnnualDividendYield;
  final double? epsTrailingTwelveMonths;
  final double? epsForward;
  final int? firstTradeDateMilliseconds;
  final int? priceHint;
  final double? preMarketChange;
  final double? preMarketChangePercent;
  final int? preMarketTime;
  final String? displayName;
  final String symbol;

  const QuoteResponseResultModel({
    required this.language,
    required this.region,
    required this.quoteType,
    this.typeDisp,
    this.quoteSourceName,
    required this.triggerable,
    this.customPriceAlertConfidence,
    this.currency,
    this.exchangeTimezoneName,
    this.exchangeTimezoneShortName,
    required this.esgPopulated,
    this.market,
    this.exchange,
    this.gmtOffSetMilliseconds,
    this.messageBoardId,
    this.shortName,
    this.marketState,
    this.longName,
    required this.tradeable,
    this.sharesOutstanding,
    this.bookValue,
    this.fiftyDayAverage,
    this.fiftyDayAverageChange,
    this.fiftyDayAverageChangePercent,
    this.twoHundredDayAverage,
    this.twoHundredDayAverageChange,
    this.twoHundredDayAverageChangePercent,
    this.marketCap,
    this.forwardPE,
    this.priceToBook,
    this.sourceInterval,
    this.exchangeDataDelayedBy,
    this.pageViewGrowthWeekly,
    this.averageAnalystRating,
    this.preMarketPrice,
    this.regularMarketChange,
    this.regularMarketChangePercent,
    this.regularMarketTime,
    this.regularMarketPrice,
    this.regularMarketDayHigh,
    this.regularMarketDayRange,
    this.regularMarketDayLow,
    this.regularMarketVolume,
    this.regularMarketPreviousClose,
    this.bid,
    this.ask,
    this.bidSize,
    this.askSize,
    this.fullExchangeName,
    this.financialCurrency,
    this.regularMarketOpen,
    this.averageDailyVolume3Month,
    this.averageDailyVolume10Day,
    this.fiftyTwoWeekLowChange,
    this.fiftyTwoWeekLowChangePercent,
    this.fiftyTwoWeekRange,
    this.fiftyTwoWeekHighChange,
    this.fiftyTwoWeekHighChangePercent,
    this.fiftyTwoWeekLow,
    this.fiftyTwoWeekHigh,
    this.earningsTimestamp,
    this.earningsTimestampStart,
    required this.earningsTimestampEnd,
    this.trailingAnnualDividendRate,
    this.trailingPE,
    this.trailingAnnualDividendYield,
    this.epsTrailingTwelveMonths,
    this.epsForward,
    this.firstTradeDateMilliseconds,
    this.priceHint,
    this.preMarketChange,
    this.preMarketChangePercent,
    this.preMarketTime,
    this.displayName,
    required this.symbol,
  });

  factory QuoteResponseResultModel.fromJson(Map<String, dynamic> json) =>
      _$QuoteResponseResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteResponseResultModelToJson(this);

  QuoteResponseResult toEntity() {
    return QuoteResponseResult(
      language: language,
      region: region,
      quoteType: quoteType,
      typeDisp: typeDisp,
      quoteSourceName: quoteSourceName,
      triggerable: triggerable,
      customPriceAlertConfidence: customPriceAlertConfidence,
      currency: currency,
      exchangeTimezoneName: exchangeTimezoneName,
      exchangeTimezoneShortName: exchangeTimezoneShortName,
      esgPopulated: esgPopulated,
      market: market,
      exchange: exchange,
      gmtOffSetMilliseconds: gmtOffSetMilliseconds,
      messageBoardId: messageBoardId,
      shortName: shortName,
      marketState: marketState,
      longName: longName,
      tradeable: tradeable,
      sharesOutstanding: sharesOutstanding,
      bookValue: bookValue,
      fiftyDayAverage: fiftyDayAverage,
      fiftyDayAverageChange: fiftyDayAverageChange,
      fiftyDayAverageChangePercent: fiftyDayAverageChangePercent,
      twoHundredDayAverage: twoHundredDayAverage,
      twoHundredDayAverageChange: twoHundredDayAverageChange,
      twoHundredDayAverageChangePercent: twoHundredDayAverageChangePercent,
      marketCap: marketCap,
      forwardPE: forwardPE,
      priceToBook: priceToBook,
      sourceInterval: sourceInterval,
      exchangeDataDelayedBy: exchangeDataDelayedBy,
      pageViewGrowthWeekly: pageViewGrowthWeekly,
      averageAnalystRating: averageAnalystRating,
      preMarketPrice: preMarketPrice,
      regularMarketChange: regularMarketChange,
      regularMarketChangePercent: regularMarketChangePercent,
      regularMarketTime: regularMarketTime,
      regularMarketPrice: regularMarketPrice,
      regularMarketDayHigh: regularMarketDayHigh,
      regularMarketDayRange: regularMarketDayRange,
      regularMarketDayLow: regularMarketDayLow,
      regularMarketVolume: regularMarketVolume,
      regularMarketPreviousClose: regularMarketPreviousClose,
      bid: bid,
      ask: ask,
      bidSize: bidSize,
      askSize: askSize,
      fullExchangeName: fullExchangeName,
      financialCurrency: financialCurrency,
      regularMarketOpen: regularMarketOpen,
      averageDailyVolume3Month: averageDailyVolume3Month,
      averageDailyVolume10Day: averageDailyVolume10Day,
      fiftyTwoWeekLowChange: fiftyTwoWeekLowChange,
      fiftyTwoWeekLowChangePercent: fiftyTwoWeekLowChangePercent,
      fiftyTwoWeekRange: fiftyTwoWeekRange,
      fiftyTwoWeekHighChange: fiftyTwoWeekHighChange,
      fiftyTwoWeekHighChangePercent: fiftyTwoWeekHighChangePercent,
      fiftyTwoWeekLow: fiftyTwoWeekLow,
      fiftyTwoWeekHigh: fiftyTwoWeekHigh,
      earningsTimestamp: earningsTimestamp,
      earningsTimestampStart: earningsTimestampStart,
      earningsTimestampEnd: earningsTimestampEnd,
      trailingAnnualDividendRate: trailingAnnualDividendRate,
      trailingPE: trailingPE,
      trailingAnnualDividendYield: trailingAnnualDividendYield,
      epsTrailingTwelveMonths: epsTrailingTwelveMonths,
      epsForward: epsForward,
      firstTradeDateMilliseconds: firstTradeDateMilliseconds,
      priceHint: priceHint,
      preMarketChange: preMarketChange,
      preMarketChangePercent: preMarketChangePercent,
      preMarketTime: preMarketTime,
      displayName: displayName,
      symbol: symbol,
    );
  }

  @override
  List<Object?> get props => [
        language,
        region,
        quoteType,
        typeDisp,
        quoteSourceName,
        triggerable,
        customPriceAlertConfidence,
        currency,
        exchangeTimezoneName,
        exchangeTimezoneShortName,
        esgPopulated,
        market,
        exchange,
        gmtOffSetMilliseconds,
        messageBoardId,
        shortName,
        marketState,
        longName,
        tradeable,
        sharesOutstanding,
        bookValue,
        fiftyDayAverage,
        fiftyDayAverageChange,
        fiftyDayAverageChangePercent,
        twoHundredDayAverage,
        twoHundredDayAverageChange,
        twoHundredDayAverageChangePercent,
        marketCap,
        forwardPE,
        priceToBook,
        sourceInterval,
        exchangeDataDelayedBy,
        pageViewGrowthWeekly,
        averageAnalystRating,
        preMarketPrice,
        regularMarketChange,
        regularMarketChangePercent,
        regularMarketTime,
        regularMarketPrice,
        regularMarketDayHigh,
        regularMarketDayRange,
        regularMarketDayLow,
        regularMarketVolume,
        regularMarketPreviousClose,
        bid,
        ask,
        bidSize,
        askSize,
        fullExchangeName,
        financialCurrency,
        regularMarketOpen,
        averageDailyVolume3Month,
        averageDailyVolume10Day,
        fiftyTwoWeekLowChange,
        fiftyTwoWeekLowChangePercent,
        fiftyTwoWeekRange,
        fiftyTwoWeekHighChange,
        fiftyTwoWeekHighChangePercent,
        fiftyTwoWeekLow,
        fiftyTwoWeekHigh,
        earningsTimestamp,
        earningsTimestampStart,
        earningsTimestampEnd,
        trailingAnnualDividendRate,
        trailingPE,
        trailingAnnualDividendYield,
        epsTrailingTwelveMonths,
        epsForward,
        firstTradeDateMilliseconds,
        priceHint,
        preMarketChange,
        preMarketChangePercent,
        preMarketTime,
        displayName,
        symbol,
      ];
}
