// ignore: file_names
import 'package:flutter/material.dart';
import './redirecting_page_function.dart';
//import 'about_page.dart';

class Template extends StatefulWidget {
  const Template({Key? key}) : super(key: key);
  @override
  TemplateState createState() => TemplateState();
}

class TemplateState extends State<Template> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppbarPC(), endDrawer: const AppbarPhone());
  }
}

class AppbarPhone extends StatelessWidget {
  const AppbarPhone({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.bottomRight,
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          const SizedBox(
            height: 55.0,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(24, 8, 24, 46),
              ),
              child: Text(
                'Options',
              ),
            ),
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
                redirect_page(context, redirect_photos);
              }),
          const Divider(),
          ListTile(
              title: const Text('Logs'),
              onTap: () {
                redirect_page(context, redirect_logs);
              }),
          const Divider(),
          ListTile(
              title: const Text('About'),
              onTap: () {
                redirect_page(context, redirect_about);
              }),
        ]),
      ),
    );
  }
}

// class CreateList extends StatelessWidget {
//   const CreateList({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppbarPC(), endDrawer: const AppbarPhone());
//   }
// }

class AppbarPC extends StatefulWidget implements PreferredSizeWidget {
  AppbarPC({Key? key, double height = 50.0})
      : preferredSize = Size.fromHeight(height),
        super(key: key);
  //AppbarPC({Key? key}) : super(key: key);
  @override
  final Size preferredSize; // This didnot work for me.
  //Size get preferredSize => preferredSize; //This should work.
  @override
  AppbarPCState createState() => AppbarPCState();
}

class AppbarPCState extends State<AppbarPC> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //backgroundColor: Colors.blue,
      leading: Padding(
          padding: const EdgeInsets.all(0.0),
          // adding image: https://www.flutterbeads.com/add-image-in-flutter/
          child:
              Image.asset('files/polyorbite.png', height: 1000, width: 1000)),
      //Column interresting too
      title:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        // margin exterior
        //padding interior
        ElevatedButton(
          onPressed: () {},
          child: PopupMenuButton(
              offset: Offset(0.0, AppBar().preferredSize.height),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
              child: const Text("Command"),
              itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text("History"),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text("Send command"),
                    )
                  ]),
        ),
        const SizedBox(
          width: 30,
        ),
        ElevatedButton(
          onPressed: () {
            redirect_page(context, redirect_photos);
          },
          child: const Text('Photos'),
        ),
        const SizedBox(
          width: 30,
        ),
        ElevatedButton(
          onPressed: () {
            redirect_page(context, redirect_logs);
          },
          child: const Text('Logs'),
        ),
        const SizedBox(
          width: 30,
        ),
        ElevatedButton(
          onPressed: () {
            redirect_page(context, redirect_about);
          },
          child: const Text('About'),
        ),
        const SizedBox(
          width: 30,
        ),
      ]),
    );
  }
}
