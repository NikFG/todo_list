// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefa_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TarefaStore on _TarefaStore, Store {
  Computed<bool>? _$isEmptyComputed;

  @override
  bool get isEmpty => (_$isEmptyComputed ??=
          Computed<bool>(() => super.isEmpty, name: '_TarefaStore.isEmpty'))
      .value;
  Computed<int>? _$tamComputed;

  @override
  int get tam => (_$tamComputed ??=
          Computed<int>(() => super.tam, name: '_TarefaStore.tam'))
      .value;
  Computed<List<Tarefa>>? _$conluidasComputed;

  @override
  List<Tarefa> get conluidas =>
      (_$conluidasComputed ??= Computed<List<Tarefa>>(() => super.conluidas,
              name: '_TarefaStore.conluidas'))
          .value;
  Computed<List<Tarefa>>? _$naoConcluidasComputed;

  @override
  List<Tarefa> get naoConcluidas => (_$naoConcluidasComputed ??=
          Computed<List<Tarefa>>(() => super.naoConcluidas,
              name: '_TarefaStore.naoConcluidas'))
      .value;
  Computed<List<Tarefa>>? _$filtragemComputed;

  @override
  List<Tarefa> get filtragem =>
      (_$filtragemComputed ??= Computed<List<Tarefa>>(() => super.filtragem,
              name: '_TarefaStore.filtragem'))
          .value;

  final _$tarefasAtom = Atom(name: '_TarefaStore.tarefas');

  @override
  ObservableList<Tarefa> get tarefas {
    _$tarefasAtom.reportRead();
    return super.tarefas;
  }

  @override
  set tarefas(ObservableList<Tarefa> value) {
    _$tarefasAtom.reportWrite(value, super.tarefas, () {
      super.tarefas = value;
    });
  }

  final _$filtroAtom = Atom(name: '_TarefaStore.filtro');

  @override
  String get filtro {
    _$filtroAtom.reportRead();
    return super.filtro;
  }

  @override
  set filtro(String value) {
    _$filtroAtom.reportWrite(value, super.filtro, () {
      super.filtro = value;
    });
  }

  final _$_TarefaStoreActionController = ActionController(name: '_TarefaStore');

  @override
  void addLista(Tarefa tarefa) {
    final _$actionInfo = _$_TarefaStoreActionController.startAction(
        name: '_TarefaStore.addLista');
    try {
      return super.addLista(tarefa);
    } finally {
      _$_TarefaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeList(Tarefa tarefa) {
    final _$actionInfo = _$_TarefaStoreActionController.startAction(
        name: '_TarefaStore.removeList');
    try {
      return super.removeList(tarefa);
    } finally {
      _$_TarefaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void concluiList(Tarefa tarefa) {
    final _$actionInfo = _$_TarefaStoreActionController.startAction(
        name: '_TarefaStore.concluiList');
    try {
      return super.concluiList(tarefa);
    } finally {
      _$_TarefaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _ordenaLista() {
    final _$actionInfo = _$_TarefaStoreActionController.startAction(
        name: '_TarefaStore._ordenaLista');
    try {
      return super._ordenaLista();
    } finally {
      _$_TarefaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tarefas: ${tarefas},
filtro: ${filtro},
isEmpty: ${isEmpty},
tam: ${tam},
conluidas: ${conluidas},
naoConcluidas: ${naoConcluidas},
filtragem: ${filtragem}
    ''';
  }
}
