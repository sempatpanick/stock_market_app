import 'package:equatable/equatable.dart';

class Quote extends Equatable {
  final QuoteResponse quoteResponse;

  const Quote({
    required this.quoteResponse,
  });

  @override
  List<Object?> get props => [quoteResponse];
}

class QuoteResponse extends Equatable {
  final List<QuoteResponseResult> result;

  const QuoteResponse({
    required this.result,
  });

  @override
  List<Object?> get props => [result];
}

class QuoteResponseResult extends Equatable {
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

  const QuoteResponseResult({
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
    this.earningsTimestampEnd,
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
