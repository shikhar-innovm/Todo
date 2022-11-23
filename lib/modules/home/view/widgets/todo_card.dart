import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../_utils/constants/routes.dart';
import '../../models/todo_dto.dart';
import '../../../todo/view/add_edit_todo_page.dart';

class TodoCard extends StatelessWidget {
  final TodoDTO todoDTO;
  final bool isProgressing;
  const TodoCard({Key? key, required this.todoDTO, this.isProgressing = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {
              Get.bottomSheet(
                const AddEditTodo(),
                settings: const RouteSettings(
                  arguments: {"data": "new"},
                ),
              );
            },
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            icon: Icons.edit,
            label: 'Edit',
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {},
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Get.toNamed(
            RouteNames.todoDetailPage,
            arguments: todoDTO,
          );
        },
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(todoDTO.title)),
                    if (isProgressing) const CircularProgressIndicator(),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                  child: Text(
                    todoDTO.description,
                    overflow: TextOverflow.fade,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
