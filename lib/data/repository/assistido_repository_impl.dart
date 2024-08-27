import 'package:defensoriaemcampo/data/database/dao/assistido_dao.dart';
import 'package:defensoriaemcampo/data/database/database_mapper.dart';
import 'package:defensoriaemcampo/data/network/client/api_client.dart';
import 'package:defensoriaemcampo/data/network/dtos/assistido_dto.dart';
import 'package:defensoriaemcampo/data/network/dtos/create_assistido_dto.dart';
import 'package:defensoriaemcampo/data/network/network_mapper.dart';
import 'package:defensoriaemcampo/data/repository/assistido_repository.dart';
import 'package:defensoriaemcampo/domain/assistido.dart';
import 'package:flutter/foundation.dart';

class AssistidoRepositoryImpl implements AssistidoRepository {
  final ApiClient apiClient;
  final AssistidoDao assistidoDao;
  final DatabaseMapper databaseMapper;
  final NetworkMapper networkMapper;

  AssistidoRepositoryImpl({
    required this.apiClient,
    required this.assistidoDao,
    required this.databaseMapper,
    required this.networkMapper,
  });

  @override
  Future<List<Assistido>> getAssistidos({
    required int page,
    required int limit,
  }) async {
    try {
      final networkEntity =
          await apiClient.getAssistidos(page: page, limit: limit);
      final assistidos = networkMapper.toAssistidos(networkEntity);

      await assistidoDao.deleteAll();

      await assistidoDao
          .insertAll(databaseMapper.toAssistidoDatabaseEntities(assistidos));

      return assistidos;
    } catch (e) {
      if (kDebugMode) {
        print("Erro ao obter dados da API: $e");
      }

      final dbEntities = await assistidoDao.getAll(
          limit: limit, offset: (page * limit) - limit);

      return databaseMapper.toAssistidos(dbEntities);
    }
  }

  @override
  Future<AssistidoDto?> createAssistido({
    required CreateAssistidoDto createAssistidoDto,
  }) async {
    try {
      final assistidoCadastrado =
          await apiClient.createAssistido(createAssistidoDto);

      return assistidoCadastrado;
    } catch (e) {
      if (kDebugMode) {
        print("Erro ao obter dados da API: $e");
      }
    }
    return null;
  }

  @override
  Future<void> removeAssistido({
    required String id,
  }) async {
    await apiClient.deleteAssistido(id);
  }

  @override
  Future<AssistidoDto> updateAssistido({
    required String id,
    required CreateAssistidoDto assistidoDto,
  }) async {
    return await apiClient.updateAssistido(id, assistidoDto);
  }
}
