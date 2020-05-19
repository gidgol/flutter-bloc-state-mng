import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/bloc/data_bloc.dart';

import 'page_2.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Page 1",
          ),
        ),
        body: SafeArea(
          child: Container(
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page2()),
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
                    })),
          ),
        ));
  }
}

//
