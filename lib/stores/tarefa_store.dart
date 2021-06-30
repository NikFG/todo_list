import 'package:mobx/mobx.dart';
import 'package:todo_list/modelos/tarefa.dart';

part 'tarefa_store.g.dart';

class TarefaStore = _TarefaStore with _$TarefaStore;

abstract class _TarefaStore with Store {
  @observable
  ObservableList<Tarefa> listaTarefas = ObservableList<Tarefa>.of([]);

  @observable
  bool check = false;

  @action
  void addLista(Tarefa tarefa) {
    tarefa.id = "${tam + 1}";
    listaTarefas.add(tarefa);
  }

  @action
  void removeList(Tarefa tarefa) {
    listaTarefas.remove(tarefa);
  }

  @action
  void concluiList(Tarefa tarefa) {
    tarefa.concluido = !tarefa.concluido;
  }

  @computed
  bool get isEmpty => listaTarefas.isEmpty;

  @computed
  int get tam => listaTarefas.length;
}
