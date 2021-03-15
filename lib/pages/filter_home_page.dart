import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filtros'),
      ),
      body: _bodyBuilder(),
    );
  }
}

Widget _bodyBuilder() {
  return Container(
    child: Center(
      child: Text('Filtros'),
    ),
  );
}
