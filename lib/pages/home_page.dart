import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/service/gerador_num_aleatorio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var numeroGerado = 0;
  var qtdCliques = 0;

  @override
  Widget build(BuildContext context) {
    // debugPrint("Chamando método build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu App", 
        style: GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.bold)
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.cyan,
              child: Text(
                "Ações do usuário",
                style: GoogleFonts.acme(fontSize: 30),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Text(
                  "Foi clicado $qtdCliques vezes",
                  style: GoogleFonts.acme(fontSize: 30),
                ),
              ),
            ),
            Container(
              color: Colors.indigo,
              child: Text(
                "O numero gerado é $numeroGerado",
                style: GoogleFonts.acme(fontSize: 30),
              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Text(
                        "Nome",
                        style: GoogleFonts.acme(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.yellow,
                      child: Text(
                        "Renan Clemonini",
                        style: GoogleFonts.acme(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                      child: Text(
                        "30",
                        style: GoogleFonts.acme(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          qtdCliques++;
          setState(() {
            numeroGerado = GeradorNumeroAleatorio.gerarNumeroAleatorio(999);
          });
        },
      ),
    );
  }
}