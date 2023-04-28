import 'package:flutter/material.dart';
import 'package:to_do_list/todo_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        // Title
        title: const Text("To Do List"),
        // make them stay in the middle
        centerTitle: true,
        // set background colour
        backgroundColor: Color.fromRGBO(204, 119, 34, 100),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 20, left: 20),
                  child: const Text(
                    'All To Do',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ToDoItem(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: Color.fromRGBO(136, 45, 23, 100),
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}

void addToDo() {

}