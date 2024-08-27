// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_assistido_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAssistidoDto _$UpdateAssistidoDtoFromJson(Map<String, dynamic> json) =>
    UpdateAssistidoDto(
      id: json['id'] as String,
      nome: json['nome'] as String,
      cpf: json['cpf'] as String?,
      idade: (json['idade'] as num?)?.toInt(),
      sexo: json['sexo'] as String?,
      demanda: json['demanda'] as String,
    );

Map<String, dynamic> _$UpdateAssistidoDtoToJson(UpdateAssistidoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'cpf': instance.cpf,
      'idade': instance.idade,
      'sexo': instance.sexo,
      'demanda': instance.demanda,
    };
