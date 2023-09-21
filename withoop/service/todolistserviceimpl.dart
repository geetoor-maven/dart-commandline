import '../repository/todolistrepoimpl.dart';
import 'todolistservice.dart';

class TodoListServiceImpl implements TodoListService {
  TodoListRepoImpl? todoListRepoImpl = new TodoListRepoImpl();

  @override
  void addTodoList(String todoList) {
    // TODO: implement addTodoList
    todoListRepoImpl!.addModelList(todoList);
  }

  @override
  bool findTodoList(String toDoList) {
    // TODO: implement findTodoList
    return todoListRepoImpl!.findModelList(toDoList);
  }

  @override
  void getAllTodoList() {
    // TODO: implement getAllTodoList
    List<String> theTodoList = todoListRepoImpl!.getAllTodoList();
    for (int i = 0; i < theTodoList.length; i++) {
      print('${(i + 1)} : ${theTodoList[i]}');
    }
  }

  @override
  List<String> findAllTodoList() {
    // TODO: implement findAllTodoList
    List<String> theTodoList = todoListRepoImpl!.getAllTodoList();
    return theTodoList;
  }

  @override
  void removeTodoList(String toDoList) {
    // TODO: implement removeTodoList
    bool isSuccessRemoveTodoList = todoListRepoImpl!.deleteTodoListByModel(toDoList);
    if(isSuccessRemoveTodoList){
      print('-- to-do list ${toDoList} sukses di hapus');
    }else{
      print('-- to-do list ${toDoList} gagal di hapus karena tidak di temukan');
    }
  }

}
