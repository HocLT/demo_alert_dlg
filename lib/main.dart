import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatelessWidget(),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  _showAlertDialog(BuildContext context) {
    Future<String?> result = showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text('Thông báo'),
              content: const Text('Nội dung thông báo'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ));
  }

  /*
  Stream<String?> stream = result.asStream();
    stream.listen((event) {
      String choose = event!;
    }, onDone: () {
      print('Done');
    }, onError: (error) {
      print('Error! $error');
    });
  */
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _showAlertDialog(context),
      child: const Text('Show Dialog'),
    );
  }
}
