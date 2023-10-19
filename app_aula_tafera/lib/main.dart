import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplicativo Tarefas"),
        ),
      body: Column(
        children: [
          Task("Aprender Flutter","https://i.pinimg.com/564x/e3/81/f9/e381f94e800c75721a67f1300db80de3.jpg"),
          Task("Jogar Video Jogos","https://i.pinimg.com/originals/d5/c8/eb/d5c8ebdfa1eb3ec56d3c284577f3a1c6.jpg"),
          Task("Estudar","https://www.ahnegao.com.br/wp-content/uploads/2022/11/imgaleat-6ck-1.jpg"),
          Task("Jogar aquele Fut","https://www.ahnegao.com.br/wp-content/uploads/2018/06/img-1.jpg")
        ],
      )
      )     
    );
  }
}

class Task extends StatelessWidget {
  final String tarefa;
  final String img;
  const Task(this.tarefa,this.img,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(color: Colors.blue[800], height: 140),
            Container(color: Colors.white, height: 100,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(color: Colors.grey, height: 100, width: 80,
                  child: Image.network(img,
                  fit:BoxFit.fill),),
                Text(tarefa,style: TextStyle(fontSize: 22),
                ),
                ElevatedButton(onPressed: () {
                  print("Botão Pressionado");
                }, 
                child: Icon(Icons.arrow_drop_up_sharp))
              ],
            )
            )
          ] 
        ),
      );
  }
}