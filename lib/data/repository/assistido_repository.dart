import 'package:defensoriaemcampo/data/network/dtos/assistido_dto.dart';
import 'package:defensoriaemcampo/data/network/dtos/create_assistido_dto.dart';
import 'package:defensoriaemcampo/domain/assistido.dart';

abstract class AssistidoRepository {
  Future<List<Assistido>> getAssistidos({
    required int page,
    required int limit,
  });

  Future<AssistidoDto?> createAssistido({
    required CreateAssistidoDto createAssistidoDto,
  });

  Future<AssistidoDto> updateAssistido({
    required String id,
    required CreateAssistidoDto assistidoDto,
  });

  Future<void> removeAssistido({
    required String id,
  });
}
