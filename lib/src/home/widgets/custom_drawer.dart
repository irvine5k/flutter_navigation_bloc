import 'package:app3/src/home/widgets/home_controller.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: StreamBuilder<int>(
        initialData: 0,
        stream: HomeController.of(context).drawerChangeOutput,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return ListView(
            children: <Widget>[
              ListTile(
                selected: snapshot.data == 0,
                title: Text('Inicio'),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  HomeController.of(context).drawerChangeInput.add(0);
                },
              ),
              ListTile(
                selected: snapshot.data == 1,
                title: Text('Favoritos'),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  HomeController.of(context).drawerChangeInput.add(1);
                },
              ),
              ListTile(
                selected: snapshot.data == 2,
                title: Text('Perfil'),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  HomeController.of(context).drawerChangeInput.add(2);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
