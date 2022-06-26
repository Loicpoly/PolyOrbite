import 'package:flutter/material.dart';

class Template extends StatefulWidget {
  const Template({Key? key}) : super(key: key);
  @override
  TemplateState createState() => TemplateState();
}

class TemplateState extends State<Template> {
  @override
  Widget build(BuildContext context) {
    return const CreateList();
    // return Scaffold(
    //   appBar: AppbarPC(),
    //   drawer: const CreateList(),
    // );
  }
}

class AppbarPhone extends AppBar {
  AppbarPhone({Key? key})
      : super(
          key: key,
          leading: Padding(
              padding: const EdgeInsets.all(0.0),
              // adding image: https://www.flutterbeads.com/add-image-in-flutter/
              child: Image.asset('files/polyorbite.png',
                  height: 1000, width: 1000)),
          //title: const CreateList(),
        );
}

class CreateList extends StatelessWidget {
  const CreateList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarPC(),
        endDrawer: Drawer(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(0.0),
            alignment: Alignment.bottomRight,
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Text('Options'),
              ),
              ListTile(
                  title: const Text('Commands'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              const Divider(),
              ListTile(
                  title: const Text('Photos'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              const Divider(),
              ListTile(
                  title: const Text('Logs'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              const Divider(),
              ListTile(
                  title: const Text('About'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ]),
          ),
        ));
  }
}

class AppbarPC extends AppBar {
  AppbarPC({Key? key})
      : super(
            key: key,
            leading: Padding(
                padding: const EdgeInsets.all(0.0),
                // adding image: https://www.flutterbeads.com/add-image-in-flutter/
                child: Image.asset('files/polyorbite.png',
                    height: 1000, width: 1000)),
            //Column interresting too
            title: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    // margin exterior
                    //padding interior
                    Container(
                      margin: const EdgeInsets.all(0.0),
                      padding: const EdgeInsets.all(0.0),
                      alignment: Alignment.bottomRight,
                      child: const Text('Commands'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(0.0),
                      alignment: Alignment.bottomRight,
                      child: const Text('Photos'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(0.0),
                      alignment: Alignment.bottomRight,
                      child: const Text('Logs'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(0.0),
                      alignment: Alignment.bottomRight,
                      child: const Text('About'),
                    ),
                  ]),
            ));
}
