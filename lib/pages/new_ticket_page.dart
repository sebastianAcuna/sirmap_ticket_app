import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:ticket/utils/icons.dart';

class NewTicketPage extends StatefulWidget {
  @override
  _NewTicketPageState createState() => _NewTicketPageState();
}

bool _sePasoCaracteres = false;

class _NewTicketPageState extends State<NewTicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nuevo Ticket'),
      ),
      body: _bodyBuilder(context),
      floatingActionButton: SpeedDial(
        icon: IconData(
          Icons.add.codePoint,
          fontFamily: 'MaterialIcons',
        ),
        overlayColor: Colors.black54,
        // foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).accentColor,
        children: <SpeedDialChild>[
          SpeedDialChild(
            child: Icon(Icons.add_photo_alternate),
            label: 'Adjuntar archivo',
            labelBackgroundColor: Colors.white70,
            backgroundColor: colores(color: 'accent_light'),
            onTap: () {},
          ),
          SpeedDialChild(
            child: Icon(Icons.add_a_photo),
            label: 'Sacar foto',
            labelBackgroundColor: Colors.white70,
            backgroundColor: colores(color: 'accent_light'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

Widget _bodyBuilder(BuildContext context) {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Empresa(s):',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                width: 15.0,
              ),
              Expanded(
                child: DropdownButton(
                  hint: Text('Seleccione una empresa'),
                  items: <DropdownMenuItem>[
                    DropdownMenuItem(
                      child: Text('Curimapu export'),
                      value: 1,
                      onTap: () {},
                    ),
                  ],
                  onChanged: (dynamic valor) {},
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Titulo: ',
            style: TextStyle(fontSize: 20.0),
          ),
          TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 1,
            maxLength: 50,
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value) {},
            decoration: InputDecoration(
              helperMaxLines: 2,
              errorMaxLines: 3,
              errorText: (_sePasoCaracteres)
                  ? 'No puedes pasar de 25 caracteres'
                  : null,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Telefono: ',
                style: TextStyle(fontSize: 20.0),
              ),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.phone,
                  maxLines: 1,
                  textCapitalization: TextCapitalization.sentences,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    prefix: Text('+569'),
                    helperMaxLines: 1,
                    errorMaxLines: 2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Descripcion: ',
            style: TextStyle(fontSize: 20.0),
          ),
          /* Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border:
                  Border.all(color: Theme.of(context).accentColor, width: 3.0),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child:  */
          TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            maxLength: 200,
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value) {},
            decoration: InputDecoration(
              // border: InputBorder.none,
              helperMaxLines: 2,
              errorMaxLines: 3,
              errorText: (_sePasoCaracteres)
                  ? 'No puedes pasar de 25 caracteres'
                  : null,
            ),
          ),
          // ),
        ],
      ),
    ),
  );
}
