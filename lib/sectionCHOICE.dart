import 'package:flutter/material.dart';
import 'package:sesi9/POST.dart';
import 'package:sesi9/GET.dart';

class SectionChoice extends StatefulWidget {
  @override
  _SectionChoiceState createState() => _SectionChoiceState();
}

class _SectionChoiceState extends State<SectionChoice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("POST & GET"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                  child: Text("POST PAGE"),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PostAPI();
                      }));
                    });
                  }),
              RaisedButton(
                  child: Text("GET PAGE"),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return GetApi();
                      }));
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
