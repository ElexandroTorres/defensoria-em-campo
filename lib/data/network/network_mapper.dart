import 'package:defensoriaemcampo/data/database/entity/assistido_database_entity.dart';
import 'package:defensoriaemcampo/data/network/dtos/assistido_dto.dart';
import 'package:defensoriaemcampo/domain/assistido.dart';
import 'package:defensoriaemcampo/domain/exceptions/mapper_exception.dart';

class NetworkMapper{
  Assistido toAssistido(AssistidoDto entity){
    try{
      return Assistido(
        id: entity.id,
          nome: entity.nome,
          cpf: entity.cpf!,
          idade: entity.idade,
          sexo: entity.sexo,
        demanda: entity.demanda,
      );
    } catch (e) {
      throw MapperException<AssistidoDto, Assistido>(e.toString());
    }
  }

  List<Assistido> toAssistidos(List<AssistidoDto> entities) {
    final List<Assistido> assistidos = [];
    for (var assistidoEntity in entities) {
      assistidos.add(toAssistido(assistidoEntity));
    }
    return assistidos;
  }
}