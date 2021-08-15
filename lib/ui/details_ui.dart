import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
          onPressed: (){
              Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
