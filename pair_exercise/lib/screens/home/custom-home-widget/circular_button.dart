import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  CircularButton({text, sizeValue = 100, state})
      : _text = text,
        _sizeValue = sizeValue,
        _state = state;

  final _text;
  final _sizeValue;
  final _state;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      margin: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          shape: BoxShape.circle),
      child: Center(
        child: InkResponse(
            onTap: () => _state.iconsize = _sizeValue,
            child: Container(
              child: Text(
                _text,
                textScaleFactor: 2,
              ),
            )),
      ),
    );
  }
}
