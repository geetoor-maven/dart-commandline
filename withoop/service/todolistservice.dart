
abstract class TodoListService{
  void getAllTodoList();
  void addTodoList(String todoList);
  bool findTodoList(String toDoList);
  List<String> findAllTodoList();
  void removeTodoList(String toDoList);
}