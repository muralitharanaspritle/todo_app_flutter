import 'package:flutter/material.dart';
import 'package:todo_app_flutter/constants/Colors.dart';
import 'package:todo_app_flutter/model/todo.dart';
import 'package:todo_app_flutter/widgets/todo_item.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
      appBar: _buildAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(children: [
          searchBox(),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 20),
                  child: const Text(
                    "Todo List",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                for (ToDo todo in todoList)
                  TodoItem(
                    todo: todo,
                  )
              ],
            ),
          )
        ]),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(20)),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minHeight: 15),
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: primary,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          const Text("TODO"),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset("assets/flower.jpg")),
          )
        ],
      ),
    );
  }
}
