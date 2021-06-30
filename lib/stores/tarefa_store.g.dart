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

  final _$listaTarefasAtom = Atom(name: '_TarefaStore.listaTarefas');

  @override
  ObservableList<Tarefa> get listaTarefas {
    _$listaTarefasAtom.reportRead();
    return super.listaTarefas;
  }

  @override
  set listaTarefas(ObservableList<Tarefa> value) {
    _$listaTarefasAtom.reportWrite(value, super.listaTarefas, () {
      super.listaTarefas = value;
    });
  }

  final _$checkAtom = Atom(name: '_TarefaStore.check');

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
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
  String toString() {
    return '''
listaTarefas: ${listaTarefas},
check: ${check},
isEmpty: ${isEmpty},
tam: ${tam}
    ''';
  }
}
