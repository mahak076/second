import 'package:flutter/material.dart';
import 'Calls.dart';
import 'Camera.dart';
import 'Chat.dart';
import 'Status.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WHATSAPP",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
          IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.white,
              onPressed: () {})
        ],
        bottom: TabBar(controller: _tabController, tabs: [
          Tab(
            icon: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
          Tab(
            child: Text(
              "CHATS",
              style: Theme.of(context).textTheme.button,
            ),
          ),
          Tab(
            child: Text(
              "STATUS",
              style: Theme.of(context).textTheme.button,
            ),
          ),
          Tab(
            child: Text(
              "CALLS",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
