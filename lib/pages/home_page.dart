import 'package:flutter/material.dart';
import 'package:ticket/pages/filter_home_page.dart';
import 'package:ticket/pages/new_ticket_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

levantar(BuildContext context, Object pagina) {
  Navigator.of(context).push(MaterialPageRoute(
    fullscreenDialog: true,
    builder: (context) => pagina,
  ));
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        centerTitle: true,
        elevation: 5.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_list_alt,
              size: 35.0,
            ),
            onPressed: () => levantar(context, FilterPage()),
          ),
          SizedBox(
            width: 16.0,
          )
        ],
      ),
      body: SafeArea(
        child: _bodyBuilder(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => levantar(context, NewTicketPage()),
      ),
    );
  }
}

Widget _bodyBuilder() {
  return ListView(children: <Widget>[
    ListTile(
      leading: Icon(
        Icons.whatshot_sharp,
        size: 40.0,
      ),
      title: Text('Problemas libro de campo'),
      subtitle: Text('+56948426521'),
    ),
    ListTile(
      leading: Icon(
        Icons.local_gas_station_outlined,
        size: 40.0,
      ),
      title: Text('Problemas libro de campo'),
      subtitle: Text('+56948426521'),
    ),
  ]);
}
