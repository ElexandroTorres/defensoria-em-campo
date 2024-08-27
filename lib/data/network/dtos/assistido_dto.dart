import 'package:json_annotation/json_annotation.dart';

part 'assistido_dto.g.dart';

@JsonSerializable()
class AssistidoDto {
  String? id;
  String nome;
  String? cpf;
  int? idade;
  String? sexo;
  String demanda;

  AssistidoDto({
    this.id,
    required this.nome,
    this.cpf,
    this.idade,
    required this.sexo,
    required this.demanda,
  });

  factory AssistidoDto.fromJson(Map<String, dynamic> json) =>
      _$AssistidoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AssistidoDtoToJson(this);

  @override
  String toString() {
    return 'AssistidoDto{nome: $nome, idade: $idade}';
  }
}
