// O pacote material permite criar aplicativos para celular andrioid com os 
// com os widgets no padrão do sistema operacional Andriod
import 'package:flutter/material.dart';
// void main função principal do programa
void main() {
  // RumApp é a função que vai chamar a classe MyApp que contem a classe
  // Stateless do nosso aplicativo
  runApp(const MyApp());
}
// MyApp é a classe tipo stateless é uma classe que não é dinamica
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override // Utiliza-se override para sobrescrever os comandos de uma função dentro da classe
  // Widget build metodo que reconstroi a tela toda veez q o app é iniciado
  Widget build(BuildContext context) {
    // return - retorno da Classe
    return MaterialApp(
      // Material App faz parte do packge Material
      //*** Home tela principal do Aplicativo
      // Scaffold estrutura pre pronta do Widget com App bar, body e Scaffold Bar
      home: Scaffold(
        // App bar - Barra com titulo do aplicativo
        appBar: AppBar(
          // Tittle - parametro do widget AppBar
          // Text - Tipo de widget para colocar no parametro
          // Titulo do Scaffold
          title: Text('Aplicativo Tarefas'),
        ),
        // Body - Corpo do Sacaffold
        // Column - Tippo de Widget que permite colocar elementos na vertical no aplicativo
        body: Column(
          // Children estabelece relação com os widgets que vão na coluna
          // Children utilizado para colocar mais de um elemento na oluna do app
          children: [
            // Chama a classe Task e passa como paramerto o texto e o caminho da imagem
            Task("Aprender Flutter",
                "https://cdn-images-1.medium.com/v2/resize:fit:1024/0*vowtRZE_wvyVA7CB"),
            Task(" Jogar video game",
                "https://a-static.mlcdn.com.br/800x560/console-sony-playstation-5-825gb-marvels-spider-man-2-limited-edition/magazineluiza/237808200/7c0d5369fd416119d04202e4eb5513a0.jpg"),
            Task("Estudar",
                "https://img.imageboss.me/revista-cdn/cdn/6161/2264a8d4f17f8ee3f56155468163979b38eefbbf.jpg?1515696991"),
            Task("Jogar futebol",
                "https://conteudo.imguol.com.br/c/esporte/15/2022/12/18/messi-com-o-trofeu-da-copa-do-mundo-no-qatar-1671394673199_v2_900x506.jpg"),
          ], // Fim do chlidren
        ),
      ),
    );
  }
}
// Criamos uma classe chamada Task que herda da Classe Stateless Widgets
class Task extends StatelessWidget {
  final String tarefa; // Variavel do tipo String para pegar o nome da atarefa quando chamar a Task
  final String img; // Variavel do tipo string para pegar o caminho/ endereço da imagem/ Final palavra reservada que impede
  // que as variaveis sofram alteração de valores de forma acidental

  // Construtor de classe Task
  const Task(this.tarefa, this.img, {super.key}); // This utiliza-se para acessar variaveis contidas dentro da propria classe

  @override // Override utilizado para sobrescrever funções
  // Widget build metodo chamado para reconstruir a tela toda vez que a Task é chamada
  Widget build(BuildContext context) {
    // Return - retorno da função widget build
    return Container(
      // Criamos um container
      color: Colors.white, // Color - Cor do container
      // Child estavelece relação com apenas um elemento dentro do Widget
      child: Stack( // Stack utilizado para empilhar Containers
      // Children estavelece relação com mais de um elemento
        children: [
          // Cria container Azul
          Container(color: Colors.blue, height: 140),
          Container(
            // Cria container Branco de altura 100
            color: Colors.white,
            height: 100,
            // Child cria relaçao do Container com a linha
            child: Row( // Row cria uma linha no aplicativo
            // mainAxisAlignment - Alinhamento principal do aplicativo
            // spaceBetween - Espaço entre os elementos
              mainAxisAlignment: MainAxisAlignment.spaceBetween,  
              children: [
                // Children estavelece relação com mais de um elemento
                Container(
                  // Criamos um container Cinza de 100 de altura e 80 de largura
                  color: Colors.grey,
                  height: 100,
                  width: 80,
                  child: Image.network(
                    // Child estabelece relação do container com a imagem (Child faz a relação de um objeto apeas)
                    img,
                    fit: BoxFit.fill, // fit - Parametro que permite o ajuste da imgem no container
                    // Boxfit.fill parametro que permite o ajuste da imagem no container todo
                  ),
                ),
                // Text - Widget Texto 
                // Tarefa - variavel que ira receber o nome da tarefa Quando a classe for chamada
                Text(
                  tarefa,
                  // Style parametro que permite cutomizar o texto com o parametro TextStyle
                  // Que permite ajustar o tamanho da fonte do texto
                  style: TextStyle(fontSize: 22),
                ),
                ElevatedButton(
                  // ElevatedButton permite criar um botão no app
                  // onpressed - parametro para colocar uma função que é executada quando o botão é precionado
                    onPressed: () {
                      print("Botão pressionado");
                    },
                    // child estabelece a relação entre o botão e o icone
                    // Icon permite colocar um icone no botão
                    // Parametro Icon recebe Icons.arrow_drop_up cria o icone da seta no botão
                    child: Icon(Icons.arrow_drop_up)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
