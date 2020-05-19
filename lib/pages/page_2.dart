import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/bloc/data_bloc.dart';
import 'package:playground/pages/page_3.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 2"),
        ),
        body: SafeArea(
            child: Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page3()),
              );
            },
            child: BlocBuilder<DataBloc, DataState>(
                bloc: BlocProvider.of<DataBloc>(context),
                builder: (context, state) {
                  return Center(
                      child: Text(
                    state.name,
                    style: TextStyle(fontSize: 40),
                  ));
                }),
          ),
        )));
  }
}
