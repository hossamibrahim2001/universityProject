import 'package:collage_project/view/touristrisort/singel_resort.dart';
import 'package:flutter/material.dart';

class TouristResortScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: Text(
                  'Resort',
                  style: TextStyle(color: Colors.black),
                ),
                centerTitle: true,
                expandedHeight: MediaQuery.of(context).size.height * 0.45,
                floating: true,
                pinned: true,
                snap: false,
                actionsIconTheme: IconThemeData(opacity: 0.0),
                flexibleSpace: Stack(
                  children: <Widget>[
                    Positioned.fill(
                        child: Image.asset(
                      "assets/img.jpg",
                      fit: BoxFit.cover,
                    ))
                  ],
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.all(16.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    Container(),
                  ]),
                ),
              ),
            ];
          },
          body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (_, index) => Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          SingelResort(nameOfResort: 'Resort $index'),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset("assets/img.jpg"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Resort $index'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            itemCount: 40,
          ),
        ),
      ),
    );
  }
}
