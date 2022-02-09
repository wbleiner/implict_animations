import 'package:flutter/material.dart';
import 'package:implict_animations/components/ExpansionTileCustom.dart';
import 'package:implict_animations/data/dummy_data.dart';
import 'package:implict_animations/model/data_model.dart';

class Exercicio2 extends StatefulWidget {
  const Exercicio2({Key? key}) : super(key: key);

  @override
  State<Exercicio2> createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2> {
  List<DataModel> data = dummyData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercicio 2'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (ctx, i) {
          return ExpansionTileCustom(
            title: data[i].title,
            content: data[i].content,
          );
        },
      ),
    );
  }
}
