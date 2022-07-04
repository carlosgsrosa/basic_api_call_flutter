import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final String name;
  final int medicalRecord;
  final int age;

  HomeWidget({
    Key key,
    this.name,
    this.medicalRecord,
    this.age,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name: $name"),
                      Text("Medical record: $medicalRecord"),
                      Text("Age: $age"),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
