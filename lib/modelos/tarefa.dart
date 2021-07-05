import 'package:intl/intl.dart';
import "package:json_annotation/json_annotation.dart";
import "package:mobx/mobx.dart";

part "tarefa.g.dart";

@JsonSerializable()
class Tarefa extends _TarefaInfo {
  Tarefa();

  factory Tarefa.fromJson(Map<String, dynamic> json) => _$TarefaFromJson(json);

  Map<String, dynamic> toJson() => _$TarefaToJson(this);
}

class _TarefaInfo = _TarefaInfoBase with _$Tarefa;

abstract class _TarefaInfoBase with Store {
  String? id;
  late String descricao;
  @observable
  bool concluido = false;
  late DateTime dataHora;

  @override
  String toString() {
    return "Tarefa: { "
        "descricao: $descricao "
        "concluido: $concluido "
        "dataHora: ${DateFormat().format(dataHora)} "
        "}";
  }
}
