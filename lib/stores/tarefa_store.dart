import "package:mobx/mobx.dart";
import "package:todo_list/modelos/tarefa.dart";

part "tarefa_store.g.dart";

class TarefaStore = _TarefaStore with _$TarefaStore;

abstract class _TarefaStore with Store {
  @observable
  ObservableList<Tarefa> tarefas = ObservableList<Tarefa>.of([]).asObservable();

  @observable
  String filtro = "";

  @action
  void addLista(Tarefa tarefa) {
    tarefa.id = "${tam + 1}";
    tarefas.add(tarefa);
  }

  @action
  void removeList(Tarefa tarefa) {
    tarefas.remove(tarefa);
    _ordenaLista();
  }

  @action
  void concluiList(Tarefa tarefa) {
    tarefa.concluido = !tarefa.concluido;
    _ordenaLista();
  }

  @action
  void _ordenaLista() {
    tarefas.sort((a, b) {
      if (a.concluido == b.concluido) {
        return a.dataHora.compareTo(b.dataHora);
      }
      if (a.concluido) {
        return 1;
      }
      return -1;
    });
  }

  @computed
  bool get isEmpty => tarefas.isEmpty;

  @computed
  int get tam => tarefas.length;

  @computed


  @computed
  List<Tarefa> get conluidas =>
      tarefas.where((element) => element.concluido).toList();

  @computed
  List<Tarefa> get naoConcluidas =>
      tarefas.where((element) => !element.concluido).toList();

  @computed
  List<Tarefa> get filtragem {
    if (filtro.isEmpty) {
      return tarefas;
    }
    return tarefas
        .where((t) => t.descricao.toLowerCase().contains(filtro.toLowerCase()))
        .toList();
  }
}
