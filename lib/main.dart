import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List<Map<String, String>> info = [
    {
      "name": "Covid Safe",
      "appIconUrl":
          "https://api.madein.flutterbelgium.be/projects/Covid Safe/images/app_icon.webp"
    },
    {
      "name": "Covid Scan",
      "appIconUrl":
          "https://api.madein.flutterbelgium.be/projects/Covid Scan/images/app_icon.webp"
    },
    {
      "name": "EUDCC BE",
      "appIconUrl":
          "https://api.madein.flutterbelgium.be/projects/EUDCC BE/images/app_icon.webp"
    },
    {
      "name": "Gaia",
      "appIconUrl":
          "https://api.madein.flutterbelgium.be/projects/Gaia/images/app_icon.webp"
    },
    {
      "name": "Geluidshuis",
      "appIconUrl":
          "https://api.madein.flutterbelgium.be/projects/Geluidshuis/images/app_icon.webp"
    },
    {
      "name": "GovApp",
      "appIconUrl":
          "https://api.madein.flutterbelgium.be/projects/GovApp/images/app_icon.webp"
    },
    {
      "name": "Mijn Mooie Straat",
      "appIconUrl":
          "https://api.madein.flutterbelgium.be/projects/Mijn Mooie Straat/images/app_icon.webp"
    },
    {
      "name": "Sibos",
      "appIconUrl":
          "https://api.madein.flutterbelgium.be/projects/Sibos/images/app_icon.webp"
    },
    {
      "name": "m-Path",
      "appIconUrl":
          "https://api.madein.flutterbelgium.be/projects/m-Path/images/app_icon.webp"
    },
    {
      "name": "nexuzhealth pro",
      "appIconUrl":
          "https://api.madein.flutterbelgium.be/projects/nexuzhealth pro/images/app_icon.webp"
    }
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return LayoutBuilder(builder: (context, constraints) {
      double screenWidth = constraints.maxWidth;
      int iconCount = (screenWidth / 150).floor();
      double iconWidth = screenWidth / iconCount;
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.grey.shade200,
          centerTitle: false,
          title: Text(widget.title),
          actions: [
            IconButton(
                onPressed: null,
                iconSize: 100,
                icon: Image.network(
                  'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png',
                  width: 100,
                  height: 100,
                ))
          ],
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('made in (Flutter) UK',
                  style: TextStyle(fontSize: 72)),
              const Text(
                  'This collection of applications developed, published or contributed by Belgian developers or companies using the Flutter technology. This showcases the innovative and creative work of local developers and companies in the mobile/web app space.',
                  style: TextStyle(fontSize: 24)),
              Wrap(
                children: info
                    .map((e) => AnimatedContainer(
                          duration: Duration(milliseconds: 50),
                          width: iconWidth,
                          child: MaterialButton(
                            onPressed: () {},
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.network(e['appIconUrl']!)),
                            //iconSize: 160,
                          ),
                        ))
                    .toList(),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
    });
  }
}
