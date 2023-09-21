class TodoList {
  List<String>? modelList = [];

  List<String>? get getModelList => this.modelList;

  set setModelList(String theModelList){
    this.modelList?.add(theModelList);
  }
}
