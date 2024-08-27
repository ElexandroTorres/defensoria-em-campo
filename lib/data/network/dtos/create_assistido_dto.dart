import 'package:json_annotation/json_annotation.dart';

part 'create_assistido_dto.g.dart';

@JsonSerializable()
class CreateAssistidoDto {
  String nome;
  String? cpf;
  int? idade;
  String? sexo;
  String demanda;

  CreateAssistidoDto({
    required this.nome,
    this.cpf,
    this.idade,
    required this.sexo,
    required this.demanda,
  });

  factory CreateAssistidoDto.fromJson(Map<String, dynamic> json) =>
      _$CreateAssistidoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAssistidoDtoToJson(this);
}