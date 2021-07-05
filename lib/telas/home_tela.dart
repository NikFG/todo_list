import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:todo_list/modelos/tarefa.dart";
import "package:todo_list/stores/tarefa_store.dart";
import "package:todo_list/widgets/card_custom.dart";
import 'package:todo_list/widgets/fab_custom.dart';

class HomeTela extends StatefulWidget {
  const HomeTela();

  @override
  _HomeTelaState createState() => _HomeTelaState();
}

class _HomeTelaState extends State<HomeTela> {
  late TarefaStore store;
  final _formKey = GlobalKey<FormState>();
  final _descricaoController = TextEditingController();

  @override
  void initState() {
    store = TarefaStore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Fabcustom(),
      appBar: AppBar(
        title: Text("Todo-List"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      controller: _descricaoController,
                      decoration: InputDecoration(hintText: "Tarefa a fazer"),

                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Está vazio";
                        }
                        return null;
                      },
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final Tarefa tarefa = Tarefa();
                        tarefa.descricao = _descricaoController.text;
                        tarefa.concluido = false;
                        tarefa.dataHora = DateTime.now();
                        store.addLista(tarefa);
                        _descricaoController.clear();
                      }
                    },
                    icon: Icon(Icons.add),
                  )
                ],
              ),
            ),
          ),
          Observer(builder: (context) {
            if (store.isEmpty) {
              return Text("Não há tarefas");
            } else {
              return Expanded(
                child: ListView.builder(
                    itemCount: store.tam,
                    itemBuilder: (context, index) {
                      final Tarefa tarefa = store.tarefas[index];
                      return CardCustom(
                        tarefa: tarefa,
                        apaga: () {
                          store.removeList(tarefa);
                        },
                        conclui: () {
                          store.concluiList(tarefa);
                        },
                      );
                    }),
              );
            }
          }),
        ],
      ),
    );
  }
}
