// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_assistido_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAssistidoDto _$CreateAssistidoDtoFromJson(Map<String, dynamic> json) =>
    CreateAssistidoDto(
      nome: json['nome'] as String,
      cpf: json['cpf'] as String?,
      idade: (json['idade'] as num?)?.toInt(),
      sexo: json['sexo'] as String?,
      demanda: json['demanda'] as String,
    );

Map<String, dynamic> _$CreateAssistidoDtoToJson(CreateAssistidoDto instance) =>
    <String, dynamic>{
      'nome': instance.nome,
      'cpf': instance.cpf,
      'idade': instance.idade,
      'sexo': instance.sexo,
      'demanda': instance.demanda,
    };
