import '../model/todolistmodel.dart';
import 'todolistrepo.dart';

class TodoListRepoImpl implements TodoListRepo {
  // create object todo - list for add, get, update, delete
  TodoList todoList = new TodoList();

  // add model list
  @override
  void addModelList(String theModelList) {
    // TODO: implement addModelList
    todoList.setModelList = theModelList;
  }

  // return true if model list is find
  @override
  bool findModelList(String theModelList) {
    // TODO: implement findModelList
    bool isFindTodoList = false;
    for (int i = 0; i < todoList.getModelList!.length; i++) {
      if (todoList.getModelList![i] == theModelList) {
        isFindTodoList = true;
        break;
      }
    }
    return isFindTodoList;
  }

  // return all to do list
  @override
  List<String> getAllTodoList() {
    // TODO: implement getAllTodoList
    return todoList.getModelList!;
  }

  // delete model list by name
  @override
  bool deleteTodoListByModel(String theModel) {
    // TODO: implement deleteTodoListByModel
    bool isSuccess = false;
    List<String> modelList = todoList.getModelList!;
    for (int i = 0; i < modelList.length; i++) {
      if (modelList[i] == theModel) {
        modelList.removeAt(i);
        isSuccess = true;
        break;
      }
    }
    return isSuccess;
  }
  
  
}
