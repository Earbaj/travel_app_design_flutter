import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.title, required this.images}) : super(key: key);
  final String title;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            height: 200,
            width: 400,
            child: PageView(
              children: [
                top_page_view_design(image: images[0]),
                top_page_view_design(image: images[1]),
                top_page_view_design(image: images[2]),
                top_page_view_design(image: images[3]),
                top_page_view_design(image: images[4]),
                top_page_view_design(image: images[5]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container top_page_view_design({image}) {
    return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              );
  }
}
