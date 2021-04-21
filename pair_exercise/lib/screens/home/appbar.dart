import 'package:flutter/material.dart';
import 'package:pair_exercise/screens/home/custom-home-widget/circular_button.dart';

class AppBarHome extends StatelessWidget with PreferredSizeWidget {
  AppBarHome({state, isresize = true})
      : _state = state,
        _isresize = isresize;
  final _state;
  final _isresize;
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text('My Icon'),
        actions: _isresize
            ? <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircularButton(
                      text: '+',
                      sizeValue: this._state.iconsize + 50,
                      state: _state,
                    ),
                    CircularButton(
                      text: 'S',
                      sizeValue: 100.0,
                      state: _state,
                    ),
                    CircularButton(
                      text: 'M',
                      sizeValue: 200.0,
                      state: _state,
                    ),
                    CircularButton(
                      text: 'L',
                      sizeValue: 300.0,
                      state: _state,
                    ),
                    CircularButton(
                      text: '-',
                      sizeValue: this._state.iconsize - 50,
                      state: _state,
                    ),
                  ],
                ),
              ]
            : null);
  }
}
