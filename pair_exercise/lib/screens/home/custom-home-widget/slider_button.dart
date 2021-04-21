import 'package:flutter/material.dart';

class SliderButton extends StatelessWidget {
  SliderButton({color, value = 0.0, state, type})
      : _color = color,
        _value = value,
        _state = state,
        _type = type;
  final _color;
  final _value;
  final _state;
  final _type;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        SizedBox(
            width: 330,
            child: Slider(
              value: _value,
              min: 0,
              max: 255,
              onChanged: (value) => _state.changeSliderValue(_type, value),
            )),
        _state.isprimer
            ? FloatingActionButton(
                onPressed: () => _state.changePrimerColor(_type),
                child: Text(_value.round().toString()),
                backgroundColor: _color,
              )
            : Text(_value.round().toString())
      ],
    ));
  }
}
