
import 'package:bike_app/service/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// This Widget is the main application widget.
class Application extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    StorageService storageService = StorageService();

    return MultiProvider(
      providers: [
        Provider<StorageService>.value(value: storageService),
      ],
      child: MyStatelessWidget(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ready, Set, Shop!'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              print('Shopping cart opened.');
            },
          ),
        ],
      ),
    );
  }
}