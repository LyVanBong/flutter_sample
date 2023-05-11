import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    AppwriteHelper ab = AppwriteHelper();
    ab.CreateAccount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class AppwriteHelper {
  late Client client;

  AppwriteHelper() {
    client = Client()
        .setEndpoint('https://baas.softty.net/v1')
        .setProject('645ccb3a9f19cf830f09')
        .setSelfSigned(
            status:
                true); // For self signed certificates, only use for development
  }
  void CreateAccount() async {
    // Register User
    Account account = Account(client);

    final user = await account.create(
        userId: ID.unique(),
        email: 'me5@appwrite.io',
        password: 'password',
        name: 'My Name');
  }
}
