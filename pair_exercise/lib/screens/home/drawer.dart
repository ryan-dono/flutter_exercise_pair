import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({privileges, state, isprimer, isresize})
      : _privileges = privileges,
        _state = state,
        _isprimer = isprimer,
        _isresize = isresize;

  final _privileges;
  final _state;
  final _isprimer;
  final _isresize;
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView.builder(
            itemCount: _privileges.length,
            itemBuilder: (context, index) {
              String keys = _privileges.keys.elementAt(index);

              return Card(
                elevation: 2,
                child: CheckboxListTile(
                    title: Text(_privileges[keys]),
                    controlAffinity: ListTileControlAffinity.trailing,
                    value: (keys == 'resize') ? _isresize : _isprimer,
                    onChanged: (val) {
                      _state.changePrivileges(
                          keys, (keys == 'resize') ? !_isresize : !_isprimer);
                    }),
              );
            }));
  }
}
