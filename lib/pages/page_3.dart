import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/bloc/data_bloc.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 3"),
        ),
        body: SafeArea(
            child: Container(
          child: BlocBuilder<DataBloc, DataState>(
              bloc: BlocProvider.of<DataBloc>(context),
              builder: (context, state) {
                _textController.text = state.name;
                return Column(
                  children: <Widget>[
                    Text(state.name),
                    Container(
                        padding: EdgeInsets.all(20),
                        child: TextField(
                          controller: _textController,
                          onChanged: (value) {
                            BlocProvider.of<DataBloc>(context).add(DataChangedEvent(name: value));
                          },
                        )),
                  ], //
                );
              }),
        )));
  }
}
