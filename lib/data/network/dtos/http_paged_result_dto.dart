import 'package:defensoriaemcampo/data/network/dtos/assistido_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'http_paged_result_dto.g.dart';

@JsonSerializable()
class HttpPagedResultDto {
  int first;
  dynamic prev;
  int? next;
  int last;
  int pages;
  int items;
  List<AssistidoDto> data;

  HttpPagedResultDto({
    required this.first,
    required this.prev,
    required this.next,
    required this.last,
    required this.pages,
    required this.items,
    required this.data,
  });

  factory HttpPagedResultDto.fromJson(Map<String, dynamic> json) =>
      _$HttpPagedResultDtoFromJson(json);
}
