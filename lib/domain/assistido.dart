import 'package:freezed_annotation/freezed_annotation.dart';

part 'assistido.freezed.dart';

@freezed
class Assistido with _$Assistido {
  const factory Assistido({
    String? id,
    required String nome,
    String? cpf,
    int? idade,
    String? sexo,
    required String demanda,
  }) = _Assistido;
}