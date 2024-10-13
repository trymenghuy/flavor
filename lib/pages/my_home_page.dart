import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../flavors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: Center(
        child: Text(
          'Hello ${F.title}',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final prefix = F.collectionPrefix;
          // FirebaseFirestore
          // final firestore = FirebaseFirestore.instance;
          final firestore = FirebaseFirestore.instanceFor(
              app: FirebaseFirestore.instance.app, databaseId: 'db-dev');
          final add = await firestore.collection('${prefix}Test').add({
            'time': FieldValue.serverTimestamp(),
          });
          print(add.id);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
