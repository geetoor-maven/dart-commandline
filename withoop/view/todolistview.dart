import 'dart:io';

import '../service/todolistserviceimpl.dart';

class TodoListView {
  TodoListServiceImpl todoListServiceImpl = new TodoListServiceImpl();

  void runApplication() {
    line();
    print('-- Menjalankan applikasi....');
    showApps().then((value) {
      print('-- $value');
      showTodoList();
    }).catchError((e) {
      print('Sorry $e');
    }).whenComplete(() {
      print('Develop by : geetoor.mvn');
      line();
    });
  }

  void showTodoList() {
    while (true) {
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

      if (theSelection == 1) {
        line();
        print('-- fitur menambahkan to-do list --');
        addModelList();
      } else if (theSelection == 2) {
        showAllModelList();
      } else if (theSelection == 3) {
        deleteTodoList();
      } else if (theSelection == 4) {
      } else if (theSelection == 5) {
        line();
        print("Aplikasi telah berhenti bro..");
        line();
        break;
      } else {
        line();
        print("-- TIDAK ADA PILIHAN --");
      }
    }
  }

  void line() {
    print("-------------------");
  }

  void addModelList() {
    stdout.write("Masukan to-do list : ");
    String theTodoList = stdin.readLineSync()!;
    todoListServiceImpl.addTodoList(theTodoList);
  }

  void showAllModelList() {
    line();
    print("Menu melihat to-do list");
    line();
    todoListServiceImpl.getAllTodoList();
  }

  void deleteTodoList(){
    stdout.write("Masukan to-do list yang ingin di hapus: ");
    String theTodoList = stdin.readLineSync()!;
    todoListServiceImpl.removeTodoList(theTodoList);
  }

  Future<String> showApps() {
    return Future.delayed(Duration(seconds: 2), () {
      bool isAppsRunning = true;
      if (isAppsRunning) {
        return 'Berhasil di jalankan....';
      } else {
        throw 'Applikasi sedang di maintanance';
      }
    });
  }
}
