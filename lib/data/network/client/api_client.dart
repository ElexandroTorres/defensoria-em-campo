import 'package:defensoriaemcampo/data/network/dtos/assistido_dto.dart';
import 'package:defensoriaemcampo/data/network/dtos/create_assistido_dto.dart';
import 'package:defensoriaemcampo/data/network/exceptions/network_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiClient {
  late final Dio _dio;

  ApiClient({required String baseUrl}) {
    _dio = Dio()
      ..options.baseUrl = baseUrl
      ..interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      );
  }

  Future<List<AssistidoDto>> getAssistidos({int? page, int? limit}) async {
    try {
      final response = await _dio.get(
        "/assistidos",
        queryParameters: {
          '_page': page,
          '_per_page': limit,
        },
      );
      _handleErrorResponse(response);
      final List<dynamic> jsonData = response.data as List<dynamic>;
      return jsonData.map((json) => AssistidoDto.fromJson(json as Map<String, dynamic>)).toList();
    } catch (e) {
      if (kDebugMode) {
        print('Erro ao buscar assistidos: $e');
      }
      throw Exception('Erro ao buscar assistidos');
    }
  }

  Future<AssistidoDto> createAssistido(CreateAssistidoDto assistido) async {
    try {
      final response = await _dio.post(
        "/assistidos",
        data: assistido.toJson(),
      );
      _handleErrorResponse(response);
      return AssistidoDto.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      if (kDebugMode) {
        print('Erro ao criar assistido: $e');
      }
      throw Exception('Erro ao criar assistido');
    }
  }

  Future<AssistidoDto> updateAssistido(String cpf, CreateAssistidoDto assistido) async {
    try {
      final response = await _dio.put(
        "/assistidos/$cpf",
        data: assistido.toJson(),
      );
      _handleErrorResponse(response);
      return AssistidoDto.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      if (kDebugMode) {
        print('Erro ao atualizar assistido: $e');
      }
      throw Exception('Erro ao atualizar assistido');
    }
  }

  Future<void> deleteAssistido(String id) async {
    try {
      final response = await _dio.delete(
        "/assistidos/$id",
      );
      _handleErrorResponse(response);
    } catch (e) {
      if (kDebugMode) {
        print('Erro ao deletar assistido: $e');
      }
      throw Exception('Erro ao deletar assistido');
    }
  }

  void _handleErrorResponse(Response response) {
    if (response.statusCode != null && response.statusCode! >= 400) {
      throw NetworkException(
        statusCode: response.statusCode!,
        message: response.statusMessage ?? 'Unknown error',
      );
    }
  }
}