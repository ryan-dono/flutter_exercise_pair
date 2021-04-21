import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({iconsize = 100, redvalue, greenvalue, bluevalue, state})
      : _iconsize = iconsize,
        _redvalue = redvalue,
        _bluevalue = bluevalue,
        _greenvalue = greenvalue,
        _state = state;

  final _iconsize;
  final _redvalue;
  final _bluevalue;
  final _greenvalue;
  final _state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.alarm,
              size: _iconsize,
              color: Color.fromRGBO(
                _redvalue.toInt(),
                _greenvalue.toInt(),
                _bluevalue.toInt(),
                100.0,
              ))
        ],
      ),
    );
  }
}
