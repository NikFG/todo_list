// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tarefa _$TarefaFromJson(Map<String, dynamic> json) {
  return Tarefa()
    ..id = json['id'] as String?
    ..descricao = json['descricao'] as String
    ..concluido = json['concluido'] as bool
    ..dataHora = DateTime.parse(json['dataHora'] as String);
}

Map<String, dynamic> _$TarefaToJson(Tarefa instance) => <String, dynamic>{
      'id': instance.id,
      'descricao': instance.descricao,
      'concluido': instance.concluido,
      'dataHora': instance.dataHora.toIso8601String(),
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Tarefa on _TarefaInfoBase, Store {
  final _$concluidoAtom = Atom(name: '_TarefaInfoBase.concluido');

  @override
  bool get concluido {
    _$concluidoAtom.reportRead();
    return super.concluido;
  }

  @override
  set concluido(bool value) {
    _$concluidoAtom.reportWrite(value, super.concluido, () {
      super.concluido = value;
    });
  }

  @override
  String toString() {
    return '''
concluido: ${concluido}
    ''';
  }
}
