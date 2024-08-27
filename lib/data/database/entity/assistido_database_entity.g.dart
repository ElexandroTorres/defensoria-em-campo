// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assistido_database_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssistidoDatabaseEntity _$AssistidoDatabaseEntityFromJson(
        Map<String, dynamic> json) =>
    AssistidoDatabaseEntity(
      idDatabase: (json['id_database'] as num?)?.toInt(),
      id: json['id'] as String?,
      nome: json['nome'] as String,
      cpf: json['cpf'] as String?,
      idade: (json['idade'] as num?)?.toInt(),
      sexo: json['sexo'] as String,
      demanda: json['demanda'] as String,
    );

Map<String, dynamic> _$AssistidoDatabaseEntityToJson(
        AssistidoDatabaseEntity instance) =>
    <String, dynamic>{
      'id_database': instance.idDatabase,
      'id': instance.id,
      'nome': instance.nome,
      'cpf': instance.cpf,
      'idade': instance.idade,
      'sexo': instance.sexo,
      'demanda': instance.demanda,
    };
