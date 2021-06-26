import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Text("A"),
                ),
                accountName: Text("Arthurzera"),
                accountEmail: Text("+55 86 99999-9999")),
            ListTile(
              leading: Icon(Icons.people_outline),
              title: Text("Novo Grupo"),
            ),
            ListTile(
              leading: Icon(Icons.person_outline_sharp),
              title: Text("Contatos"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Chamadas"),
            ),
            ListTile(
              leading: Icon(Icons.person_pin_circle_outlined),
              title: Text("Pessoas Próximas"),
            ),
            ListTile(
              leading: Icon(Icons.bookmark_outline),
              title: Text("Mensagens Salvas"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configurações"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Telegram"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: BodyWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person_add_alt_sharp),
        onPressed: () {},
      ),
    ),
  ));
}

class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Toque no ícone para iniciar uma conversa."),
    );
  }
}
