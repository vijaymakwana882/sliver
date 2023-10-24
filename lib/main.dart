import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(sliverr());
}

class sliverr extends StatefulWidget {
  const sliverr({super.key});

  @override
  State<sliverr> createState() => _sliverrState();
}

class _sliverrState extends State<sliverr> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('simple appbar'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            floating: true,
            title: Text('this is the sliver appbar'),
            // pinned: true,
            backgroundColor: Colors.tealAccent,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 50,
              (BuildContext, int) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 108,
                            width: 108,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          size: 50,
                        )
                      ],
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
