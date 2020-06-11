import 'package:flutter/material.dart';


// https://stackoverflow.com/questions/56204912/flutter-scrollable-stack-with-height-greater-than-screen-height
Widget needName(var context, Widget content) {


  /* return SingleChildScrollView(
    child: Stack(
      children: <Widget>[
        Container(
          height: 5000,
        ),
        Positioned(
          top: 100,
          left: 100,
          width: 1000,
          height: 1000,
          child: Container(color: Colors.red),
        )
      ],
    ),
  ); */

  /* return Container(
    child: Stack(
      children: [
        Image.asset('resources/images/DSC_0015.jpg'),
        SizedBox.expand(
          child: Container(
            margin: EdgeInsets.only(
              top: 100,
            ),
            child: Column(
              children: [content],
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(20),
                topRight: const Radius.circular(20),
              ),
            ),
          ),
        ),
      ],
    ),
  ); */

  /* @override
Widget build(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: DecoratedBox(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("your_image_here"), fit: BoxFit.cover)),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Container(
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("your_image_here"), fit: BoxFit.cover)),
                  padding: EdgeInsets.only(top: 12, left: 24, right: 24, bottom: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(color: Colors.white, width: 100, height: 100),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Name'),
                                SizedBox(height: 6),
                                Text('Name'),
                                SizedBox(height: 6),
                                Container(padding: EdgeInsets.all(4), color: Colors.blue, child: Text("PLUS PLAN - 1 DAY LEFT"),),
                                SizedBox(height: 12),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: OutlineButton(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          onPressed: () {},
                          child: Text("CHANGE PLAN"),
                        ),
                      ),
                      Text(
                        "Higher plans give you more connects",
                        style: TextStyle(fontSize: 10, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(30),
                          right: Radius.circular(30),
                        )),
                    child: Column(
                      children: <Widget>[
                        _buildCard1(),
                        _buildCard(size: 100, color: Colors.deepOrange),
                        _buildCard(size: 80, color: Colors.purple),
                        _buildCard(size: 100, color: Colors.pink),
                        _buildCard(size: 180, color: Colors.grey),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
} */
}
