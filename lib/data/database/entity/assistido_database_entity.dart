import 'package:json_annotation/json_annotation.dart';
import 'assistido_database_contract.dart';

part 'assistido_database_entity.g.dart';

@JsonSerializable()
class AssistidoDatabaseEntity {
  @JsonKey(name: AssistidoDatabaseContract.idDatabaseColumn)
  final int? idDatabase;
  @JsonKey(name: AssistidoDatabaseContract.id)
  final String? id;
  @JsonKey(name: AssistidoDatabaseContract.nomeColumn)
  final String nome;
  @JsonKey(name: AssistidoDatabaseContract.cpfColumn)
  final String? cpf;
  @JsonKey(name: AssistidoDatabaseContract.idadeColumn)
  final int? idade;
  @JsonKey(name: AssistidoDatabaseContract.sexoColumn)
  final String sexo;
  @JsonKey(name: AssistidoDatabaseContract.demandaColumn)
  final String demanda;

  AssistidoDatabaseEntity({
    required this.idDatabase,
    required this.id,
    required this.nome,
    this.cpf,
    this.idade,
    required this.sexo,
    required this.demanda,
  });

  factory AssistidoDatabaseEntity.fromJson(Map<String, dynamic> json) =>
      _$AssistidoDatabaseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AssistidoDatabaseEntityToJson(this);
}
