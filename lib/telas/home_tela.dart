import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_list/modelos/tarefa.dart';
import 'package:todo_list/stores/tarefa_store.dart';
import 'package:todo_list/widgets/card_custom.dart';

class HomeTela extends StatefulWidget {
  const HomeTela();

  @override
  _HomeTelaState createState() => _HomeTelaState();
}

class _HomeTelaState extends State<HomeTela> {
  late TarefaStore store;
  var _formKey = GlobalKey<FormState>();
  var _descricaoController = TextEditingController();

  @override
  void initState() {
    store = TarefaStore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      decoration: InputDecoration(hintText: "Teste"),
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
                        Tarefa tarefa = Tarefa();
                        tarefa.descricao = _descricaoController.text;
                        tarefa.concluido = false;
                        tarefa.dataHora = DateTime.now();
                        store.addLista(tarefa);
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
                        Tarefa tarefa = store.listaTarefas[index];
                        return CardCustom(
                          tarefa: tarefa,
                          apaga: () {
                            store.removeList(tarefa);
                          },
                          conclui: () {
                            store.concluiList(tarefa);
                          },
                        );
                      }));
            }
          }),
        ],
      ),
    );
  }
}
