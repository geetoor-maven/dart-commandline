import 'dart:io';

List<String> modelList = [];
void main(List<String> args) {
  bool theCondition = true;

  while (theCondition) {
    line();
    print("--- Aplikasi to-do list ---");
    print("1. Tambah List : ");
    print("2. Lihat List : ");
    print("3. Delete List");
    print("4. Update List");
    print("5. Quit");
    print("1/2/3/4 : ");
    line();

    stdout.write("Input Pilihan : ");
    int theSelection = int.parse(stdin.readLineSync()!);

    switch (theSelection) {
      case 1:
        addModelList();
        break;
      case 2:
        showAllModelList();
        break;
      case 3:
        line();
        bool isSuccessDeleted = removeToDoList(findToDoList());
        if (isSuccessDeleted) {
          print("Sukses menghapus to-do list");
        } else {
          print("Gagal menghapus to-do list");
        }
        break;
      case 4:
        line();
        bool isSuccessUpdated = updateToDoList();
        if (isSuccessUpdated) {
          print("Berhasil mengupdate to-do list");
        } else {
          print("Gagal Mengupdate to-do list");
        }
        break;
      case 5:
        line();
        print("Application Stopped");
        theCondition = false;
        break;
    }
  }
}

void line() {
  print("-------------------");
}

void addModelList() {
  stdout.write("Masukan to-do list : ");
  String theTodoList = stdin.readLineSync()!;
  modelList.add(theTodoList);
}

void showAllModelList() {
  line();
  print("Menu melihat to-do list");
  line();

  for (int i = 0; i < modelList.length; i++) {
    print('${(i + 1)} : ${modelList[i]}');
  }
}

bool removeToDoList(String theTodoList) {
  bool isSuccess = false;
  for (int i = 0; i < modelList.length; i++) {
    if (modelList[i] == theTodoList) {
      modelList.removeAt(i);
      isSuccess = true;
      break;
    }
  }
  return isSuccess;
}

bool updateToDoList() {
  bool isSuccess = false;

  stdout.write("Masukan to-do list yang ingin di update : ");
  String theTodoListFind = stdin.readLineSync()!;
  stdout.write("Update to-do list : ");
  String theTodoListUpdate = stdin.readLineSync()!;

  for (int i = 0; i < modelList.length; i++) {
    if (modelList[i] == theTodoListFind) {
      modelList[i] = theTodoListUpdate;
      isSuccess = true;
      break;
    }
  }

  return isSuccess;
}

String findToDoList() {
  stdout.write("Masukan to-do list : ");
  String theTodoList = stdin.readLineSync()!;
  return theTodoList;
}
