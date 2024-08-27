import 'package:json_annotation/json_annotation.dart';

part 'update_assistido_dto.g.dart';

@JsonSerializable()
class UpdateAssistidoDto {
  String id;
  String nome;
  String? cpf;
  int? idade;
  String? sexo;
  String demanda;

  UpdateAssistidoDto({
    required this.id,
    required this.nome,
    this.cpf,
    this.idade,
    required this.sexo,
    required this.demanda,
  });

  factory UpdateAssistidoDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateAssistidoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateAssistidoDtoToJson(this);
}