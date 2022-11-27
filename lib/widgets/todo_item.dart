import 'package:flutter/material.dart';
import 'package:todo_app_flutter/constants/Colors.dart';
import 'package:todo_app_flutter/model/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  const TodoItem({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          onTap: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          tileColor: white,
          leading: Icon(
            todo.isDone! ? Icons.check_box : Icons.check_box_outline_blank,
            color: primary,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                decoration: todo.isDone!
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
          ),
          trailing: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: white,
                ),
                onPressed: () {
                  // print("Hey clicked");
                },
                iconSize: 18,
              )),
        ));
  }
}
