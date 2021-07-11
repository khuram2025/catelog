import 'package:catelog/models/catalog.dart';
import 'package:catelog/utils/routes.dart';
import 'package:catelog/widgets/drawer.dart';
import 'package:catelog/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CataLogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catelog App"
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder
          (itemBuilder: (context, index){
            return ItemWidget(
              item: dummyList[index],
            );
        }),
      ),
      drawer: MyDrawer(

      ),

    );
  }
}
