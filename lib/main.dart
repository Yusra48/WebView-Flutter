import 'package:flutter/material.dart';
import 'package:webview_universal/webview_universal.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final WebViewController _webViewController = WebViewController();

  void initState() {
    super.initState();
    _webViewController.init(
        context: context, setState: setState, uri: Uri.https('flutter.dev'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: double.minPositive,
      ),
      body: WebView(controller: _webViewController),
    );
  }
}
