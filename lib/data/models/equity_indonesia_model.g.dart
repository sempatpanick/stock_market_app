// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equity_indonesia_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EquityIndonesiaModel _$EquityIndonesiaModelFromJson(
        Map<String, dynamic> json) =>
    EquityIndonesiaModel(
      draw: json['draw'] as int,
      recordsTotal: json['recordsTotal'] as int,
      recordsFiltered: json['recordsFiltered'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              EquityIndonesiaDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EquityIndonesiaModelToJson(
        EquityIndonesiaModel instance) =>
    <String, dynamic>{
      'draw': instance.draw,
      'recordsTotal': instance.recordsTotal,
      'recordsFiltered': instance.recordsFiltered,
      'data': instance.data,
    };

EquityIndonesiaDataModel _$EquityIndonesiaDataModelFromJson(
        Map<String, dynamic> json) =>
    EquityIndonesiaDataModel(
      code: json['Code'] as String,
      name: json['Name'] as String,
      listingDate: json['ListingDate'] as String,
      shares: json['Shares'] as int,
      listingBoard: json['ListingBoard'] as String,
      links: (json['Links'] as List<dynamic>)
          .map((e) =>
              EquityIndonesiaDataLinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EquityIndonesiaDataModelToJson(
        EquityIndonesiaDataModel instance) =>
    <String, dynamic>{
      'Code': instance.code,
      'Name': instance.name,
      'ListingDate': instance.listingDate,
      'Shares': instance.shares,
      'ListingBoard': instance.listingBoard,
      'Links': instance.links,
    };

EquityIndonesiaDataLinkModel _$EquityIndonesiaDataLinkModelFromJson(
        Map<String, dynamic> json) =>
    EquityIndonesiaDataLinkModel(
      rel: json['Rel'] as String,
      href: json['Href'] as String,
      method: json['Method'] as String,
    );

Map<String, dynamic> _$EquityIndonesiaDataLinkModelToJson(
        EquityIndonesiaDataLinkModel instance) =>
    <String, dynamic>{
      'Rel': instance.rel,
      'Href': instance.href,
      'Method': instance.method,
    };
