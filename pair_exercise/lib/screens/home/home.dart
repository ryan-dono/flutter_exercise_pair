import 'package:flutter/material.dart';
import 'package:pair_exercise/screens/home/appbar.dart';
import 'package:pair_exercise/screens/home/body.dart';
import 'package:pair_exercise/screens/home/bottom.dart';
import 'package:pair_exercise/screens/home/drawer.dart';

class Exercise extends StatefulWidget {
  Exercise({Key key}) : super(key: key);
  @override
  _ExerciseState createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  var _iconSize = 100.0;
  get iconsize => _iconSize;
  set iconsize(value) => setState(() => _iconSize = value);

  var _redSliderValue = 0.0;
  get redslidervalue => _redSliderValue;
  set redslidervalue(value) => setState(() => _redSliderValue = value);

  var _greenSliderValue = 0.0;
  get greenslidervalue => _greenSliderValue;
  set greenslidervalue(value) => setState(() => _greenSliderValue = value);

  var _blueSliderValue = 0.0;
  get blueslidervalue => _blueSliderValue;
  set blueslidervalue(value) => setState(() => _blueSliderValue = value);

  void changeSliderValue(var type, var value) {
    if (type == 'Red')
      redslidervalue = value;
    else if (type == 'Green')
      greenslidervalue = value;
    else
      blueslidervalue = value;
  }

  bool _isResized = true;
  set isresized(value) => setState(() => _isResized = value);
  bool _isPrimer = true;
  get isprimer => _isPrimer;
  set isprimer(value) => setState(() => _isPrimer = value);

  Map<String, String> _privileges = {
    'resize': 'Allow Resize ?',
    'primer': 'Allow change primer color ?',
  };

  void changePrivileges(var type, bool value) {
    if (type == 'resize') {
      isresized = value;
    } else if (type == 'primer') {
      isprimer = value;
    }
  }

  void changePrimerColor(var type) {
    if (type == 'Red') {
      redslidervalue = 255.0;
      greenslidervalue = 0.0;
      blueslidervalue = 0.0;
    } else if (type == 'Green') {
      redslidervalue = 0.0;
      greenslidervalue = 255.0;
      blueslidervalue = 0.0;
    } else if (type == 'Blue') {
      redslidervalue = 0.0;
      greenslidervalue = 0.0;
      blueslidervalue = 255.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarHome(
          isresize: _isResized,
          state: this,
        ),
        body: Body(
          iconsize: iconsize,
          redvalue: _redSliderValue,
          greenvalue: _greenSliderValue,
          bluevalue: _blueSliderValue,
          state: this,
        ),
        drawer: AppDrawer(
          privileges: _privileges,
          isprimer: _isPrimer,
          isresize: _isResized,
          state: this,
        ),
        bottomNavigationBar: Bottom(
          state: this,
          isprimer: _isPrimer,
        ),
      ),
    );
  }
}
