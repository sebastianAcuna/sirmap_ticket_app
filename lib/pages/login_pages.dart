import 'package:flutter/material.dart';
import 'package:ticket/pages/home_page.dart';
import 'package:ticket/widgets/fondo_curvo.dart';
import 'package:ticket/widgets/loginButton.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

enviarMensajeWsp() async {
  final link = WhatsAppUnilink(
    phoneNumber: '56948426521',
    text:
        "Hey, no puedo ingresar al sistema de tickets. ¿puedes contactarme conmigo? estare esperando.",
  );
  await launch('$link');
}

cambiarPagina(BuildContext context) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => HomePage(),
  ));
}

class _LoginPageState extends State<LoginPage> {
  List<Widget> _formContent(BuildContext context) => [
        _titulo(context),
        SizedBox(height: 28.0),
        SizedBox(height: 28.0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Theme.of(context).accentColor,
                width: 2.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Ingrese su usuario',
              labelStyle: TextStyle(color: Theme.of(context).accentColor),
            ),
          ),
        ),
        LoginButton(
          text: 'INGRESAR',
          textColor: Colors.white,
          backgroundColor: Theme.of(context).accentColor,
          onPressed: () => cambiarPagina(context),
        ),
        TextButton(
          onPressed: () => enviarMensajeWsp(),
          child: Text('¿Necesitas ayuda? contactanos aqui.'),
        ),
        SizedBox(height: 28.0),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(children: [
          FondoCurvo(),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _formContent(context),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

Widget _titulo(BuildContext context) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(
      left: MediaQuery.of(context).size.width * 0.15,
      top: MediaQuery.of(context).size.width * 0.30,
    ),
    child: Text(
      'Tickets Zionit',
      textAlign: TextAlign.justify,
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 55,
          shadows: <Shadow>[
            Shadow(
              color: Colors.black,
              offset: Offset.fromDirection(0, 1),
              blurRadius: 4,
            )
          ]),
    ),
  );
}
