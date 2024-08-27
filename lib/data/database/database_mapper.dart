import 'package:defensoriaemcampo/data/database/entity/assistido_database_entity.dart';
import 'package:defensoriaemcampo/domain/assistido.dart';
import 'package:defensoriaemcampo/domain/exceptions/mapper_exception.dart';

class DatabaseMapper {
  Assistido toAssistido(AssistidoDatabaseEntity entity) {
    try {
      return Assistido(
        id: entity.id,
        nome: entity.nome,
        idade: entity.idade,
        sexo: entity.sexo,
        cpf: entity.cpf!,
        demanda: entity.demanda,
      );
    } catch (e) {
      throw MapperException<AssistidoDatabaseEntity, Assistido>(e.toString());
    }
  }

  List<Assistido> toAssistidos(List<AssistidoDatabaseEntity> entities) {
    final List<Assistido> assistidos = [];
    for (var assistidoEntity in entities) {
      assistidos.add(toAssistido(assistidoEntity));
    }
    return assistidos;
  }

  AssistidoDatabaseEntity toAssistidoDatabaseEntity(Assistido assistido) {
    try {
      return AssistidoDatabaseEntity(
        idDatabase: null,
        id: assistido.id,
        nome: assistido.nome,
        sexo: assistido.sexo!,
        idade: assistido.idade,
        cpf: assistido.cpf,
        demanda: assistido.demanda,
      );
    } catch (e) {
      throw MapperException<AssistidoDatabaseEntity, Assistido>(e.toString());
    }
  }

  List<AssistidoDatabaseEntity> toAssistidoDatabaseEntities(
      List<Assistido> assistidos) {
    final List<AssistidoDatabaseEntity> assistidoDatabaseEntities = [];
    for (var m in assistidos) {
      assistidoDatabaseEntities.add(toAssistidoDatabaseEntity(m));
    }
    return assistidoDatabaseEntities;
  }
}
