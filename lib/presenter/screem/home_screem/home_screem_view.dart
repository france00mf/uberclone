import 'package:flutter/material.dart';

class HomeScreemView extends StatefulWidget {
  const HomeScreemView({Key? key, required this.title}) : super(key: key);

  final String title;
  static String idScreem = "home_screem_view";

  @override
  State<HomeScreemView> createState() => _HomeScreemViewState();
}

class _HomeScreemViewState extends State<HomeScreemView> {
  var msgHome;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    msgHome = widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              msgHome.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
