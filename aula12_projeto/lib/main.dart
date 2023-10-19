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
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
      title: Text("Aplicativo Tarefas do PAE 🤓☝"),
      backgroundColor: Color.fromARGB(255, 89, 0, 255),
        ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.blue[900],
              height: 200,
              width: 200,
              child: Text("ViniBOY",
                      style: TextStyle(fontSize: 48, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
            ),
            Container(
              color: Colors.red[800],
              height: 200,
              width: 200,
              child: Text("SENAI", 
                        style: TextStyle(fontSize: 48, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed:() {
                    print("Aplicativo Flutter");
                    }, 
                    child: Text("Mensagem 1")),
                ElevatedButton(
                  onPressed:() {
                    print("Aplicativo Flutter");
                    }, 
                    child: Text("Mensagem 2")),
                  ],
                )
            
          ],
        ) 
      ),
    )
  );
}
}