// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_paged_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpPagedResultDto _$HttpPagedResultDtoFromJson(Map<String, dynamic> json) =>
    HttpPagedResultDto(
      first: (json['first'] as num).toInt(),
      prev: json['prev'],
      next: (json['next'] as num?)?.toInt(),
      last: (json['last'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      items: (json['items'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => AssistidoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HttpPagedResultDtoToJson(HttpPagedResultDto instance) =>
    <String, dynamic>{
      'first': instance.first,
      'prev': instance.prev,
      'next': instance.next,
      'last': instance.last,
      'pages': instance.pages,
      'items': instance.items,
      'data': instance.data,
    };
