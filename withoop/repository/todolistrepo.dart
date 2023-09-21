
abstract class TodoListRepo{

  List<String> getAllTodoList();

  void addModelList(String theModel);

  bool findModelList(String theModel);

  bool deleteTodoListByModel(String theModel);
}