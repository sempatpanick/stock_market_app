import 'package:equatable/equatable.dart';

class EquityIndonesia extends Equatable {
  final int draw;
  final int recordsTotal;
  final int recordsFiltered;
  final List<EquityIndonesiaData> data;

  const EquityIndonesia({
    required this.draw,
    required this.recordsTotal,
    required this.recordsFiltered,
    required this.data,
  });

  @override
  List<Object?> get props => [
        draw,
        recordsTotal,
        recordsFiltered,
        data,
      ];
}

class EquityIndonesiaData extends Equatable {
  final String code;
  final String name;
  final String listingDate;
  final int shares;
  final String listingBoard;
  final List<EquityIndonesiaDataLink> links;

  const EquityIndonesiaData({
    required this.code,
    required this.name,
    required this.listingDate,
    required this.shares,
    required this.listingBoard,
    required this.links,
  });

  @override
  List<Object?> get props => [
        code,
        name,
        listingDate,
        shares,
        listingBoard,
        links,
      ];
}

class EquityIndonesiaDataLink extends Equatable {
  final String rel;
  final String href;
  final String method;

  const EquityIndonesiaDataLink({
    required this.rel,
    required this.href,
    required this.method,
  });

  @override
  List<Object?> get props => [rel, href, method];
}
