import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/equity_indonesia.dart';

part 'equity_indonesia_model.g.dart';

@JsonSerializable()
class EquityIndonesiaModel extends Equatable {
  final int draw;
  final int recordsTotal;
  final int recordsFiltered;
  final List<EquityIndonesiaDataModel> data;

  const EquityIndonesiaModel({
    required this.draw,
    required this.recordsTotal,
    required this.recordsFiltered,
    required this.data,
  });

  factory EquityIndonesiaModel.fromJson(Map<String, dynamic> json) =>
      _$EquityIndonesiaModelFromJson(json);

  Map<String, dynamic> toJson() => _$EquityIndonesiaModelToJson(this);

  EquityIndonesia toEntity() {
    return EquityIndonesia(
      draw: draw,
      recordsTotal: recordsTotal,
      recordsFiltered: recordsFiltered,
      data: data.map((data) => data.toEntity()).toList(),
    );
  }

  @override
  List<Object?> get props => [
        draw,
        recordsTotal,
        recordsFiltered,
        data,
      ];
}

@JsonSerializable()
class EquityIndonesiaDataModel extends Equatable {
  @JsonKey(name: 'Code')
  final String code;
  @JsonKey(name: 'Name')
  final String name;
  @JsonKey(name: 'ListingDate')
  final String listingDate;
  @JsonKey(name: 'Shares')
  final int shares;
  @JsonKey(name: 'ListingBoard')
  final String listingBoard;
  @JsonKey(name: 'Links')
  final List<EquityIndonesiaDataLinkModel> links;

  const EquityIndonesiaDataModel({
    required this.code,
    required this.name,
    required this.listingDate,
    required this.shares,
    required this.listingBoard,
    required this.links,
  });

  factory EquityIndonesiaDataModel.fromJson(Map<String, dynamic> json) =>
      _$EquityIndonesiaDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$EquityIndonesiaDataModelToJson(this);

  EquityIndonesiaData toEntity() {
    return EquityIndonesiaData(
      code: code,
      name: name,
      listingDate: listingDate,
      shares: shares,
      listingBoard: listingBoard,
      links: links.map((link) => link.toEntity()).toList(),
    );
  }

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

@JsonSerializable()
class EquityIndonesiaDataLinkModel extends Equatable {
  @JsonKey(name: 'Rel')
  final String rel;
  @JsonKey(name: 'Href')
  final String href;
  @JsonKey(name: 'Method')
  final String method;

  const EquityIndonesiaDataLinkModel({
    required this.rel,
    required this.href,
    required this.method,
  });

  factory EquityIndonesiaDataLinkModel.fromJson(Map<String, dynamic> json) =>
      _$EquityIndonesiaDataLinkModelFromJson(json);

  Map<String, dynamic> toJson() => _$EquityIndonesiaDataLinkModelToJson(this);

  EquityIndonesiaDataLink toEntity() {
    return EquityIndonesiaDataLink(
      rel: rel,
      href: href,
      method: method,
    );
  }

  @override
  List<Object?> get props => [rel, href, method];
}
