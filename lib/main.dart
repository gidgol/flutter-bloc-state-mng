import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/data_bloc.dart';
import 'pages/page_1.dart';

void main() {
  runApp(
    MyAppState(),
  );
}

class MyAppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => DataBloc(),
        child: BlocBuilder<DataBloc, DataState>(builder: (context, state) {
          return MaterialApp(debugShowCheckedModeBanner: true, home: Scaffold(body: Page1()));
        }));
  }
}
