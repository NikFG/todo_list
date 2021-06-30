import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_list/modelos/tarefa.dart';
import 'package:todo_list/stores/tarefa_store.dart';

class CardCustom extends StatelessWidget {
  final Tarefa tarefa;
  final VoidCallback? apaga;
  final VoidCallback? conclui;

  const CardCustom({required this.tarefa,
    required this.apaga,
    required this.conclui});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) =>
        Card(
          color: tarefa.concluido ? Color(0xFF00a86b) : Theme
              .of(context)
              .cardColor,
          child: ListTile(
              onTap: () {
                print(tarefa.toJson());
              },
              title: Text(
                tarefa.descricao,
                style: TextStyle(decoration: TextDecoration.lineThrough),
              ),
              subtitle: Text(
                "teste",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: conclui,
                    icon: Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  ),
                  IconButton(
                    onPressed: apaga,
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                ],
              )),
        ));
  }
}
