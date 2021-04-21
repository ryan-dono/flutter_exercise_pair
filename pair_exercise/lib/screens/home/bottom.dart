import 'package:flutter/material.dart';
import 'package:pair_exercise/screens/home/custom-home-widget/slider_button.dart';

class Bottom extends StatelessWidget {
  Bottom({state, isprimer})
      : _state = state,
        _isprimer = isprimer;
  final _state;
  final _isprimer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        child: Column(children: <Widget>[
          Expanded(
            child: Row(
              children: [
                SliderButton(
                  color: Colors.red,
                  value: _state.redslidervalue,
                  state: _state,
                  type: 'Red',
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                SliderButton(
                  color: Colors.green,
                  value: _state.greenslidervalue,
                  state: _state,
                  type: 'Green',
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                SliderButton(
                  color: Colors.blue,
                  value: _state.blueslidervalue,
                  state: _state,
                  type: 'Blue',
                )
              ],
            ),
          )
        ]),
      ),
      height: 200,
      width: double.infinity,
    );
  }
}
