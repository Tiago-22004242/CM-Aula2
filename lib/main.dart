import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() => runApp(iQueChumbei());

class iQueChumbei extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MainScreen(
          screens: const [
            registoAvaliacao(),
            listagemAvaliacao(),
          ],
          bottoms: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Dashboard"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.list),
              title: Text("Listagem de avaliações"),
              selectedColor: Colors.purple,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.assignment),
              title: Text("Registo de avaliação"),
              selectedColor: Colors.purple,
            ),
          ]
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  final List<Widget> screens;
  final List<SalomonBottomBarItem> bottoms;
  const MainScreen({super.key, required this.screens, required this.bottoms});

  @override
  State<MainScreen> createState() => _DashBoardState();
}

class _MainScreenState extends State<MainScreen> {
  var _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("DashBoard"),
        ),
        body: widget.screens[_currentPage],
        bottomNavigationBar: SalomonBottomBar(
            currentIndex: _currentPage,
            onTap: (i) => setState(() => _currentPage = i),
            items: widget.bottoms
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class registoAvaliacao extends StatefulWidget {
  const registoAvaliacao({super.key});
  @override
  State<registoAvaliacao> createState() => _registoAvaliacaoState();
}
class _registoAvaliacaoState extends State<registoAvaliacao> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Registo de Avaliação"),
          ),
          body: ListView(
            prototypeItem: Card(child:ListTile(
              leading: Image.asset('lib/assets/logo.jpg'),
              title: Text('ok'),
              trailing: Icon(Icons.more_vert),
            )
            ),
          )
      ),
    );
  }
}
class listagemAvaliacao extends StatefulWidget {
  const listagemAvaliacao({super.key});
  @override
  State<registoAvaliacao> createState() => _registoAvaliacaoState();
}
class _listagemState extends State<listagemAvaliacao> {
  final disciplinaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Registo de Avaliação"),
          ),
          body: ListView(
            prototypeItem: Card(child:ListTile(
              leading: Image.asset('lib/assets/logo.jpg'),
              title: Text('ok'),
              trailing: Icon(Icons.more_vert),
            )
            ),
          )
      ),
    );
  }
}


