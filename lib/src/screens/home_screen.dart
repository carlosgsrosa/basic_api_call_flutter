import 'package:basic_api_call_flutter/src/widgets/home_widget.dart';
import 'package:flutter/material.dart';

import '../data/home_model.dart';
import '../util/http_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeModel data = HomeModel();
  bool isFetching = false;

  Future fetchData() async {
    setState(() => isFetching = true);
    HttpHelper helper = HttpHelper();
    data = await helper.getHome("1");
    setState(() => isFetching = false);
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isFetching
          ? Center(child: CircularProgressIndicator())
          : HomeWidget(
              name: data?.name,
              medicalRecord: data?.medicalRecord,
              age: data?.age,
            ),
    );
  }
}
