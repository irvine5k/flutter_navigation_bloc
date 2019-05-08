import 'package:app3/src/home/pages/favorites_page.dart';
import 'package:app3/src/home/pages/home_page.dart';
import 'package:app3/src/home/pages/perfil_page.dart';
import 'package:app3/src/home/widgets/custom_drawer.dart';
import 'package:app3/src/home/widgets/home_controller.dart';
import 'package:flutter/material.dart';

class HomeIndex extends StatefulWidget {
  @override
  _HomeIndexState createState() => _HomeIndexState();
}

class _HomeIndexState extends State<HomeIndex> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  var pages = <Widget>[
    HomePage(),
    FavoritesPage(),
    PerfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Navegação'),
      ),
      drawer: CustomDrawer(),
      body: StreamBuilder(
        stream: HomeController.of(context).drawerChangeOutput,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return pages[snapshot.data];
        },
      ),
    );
  }
}
