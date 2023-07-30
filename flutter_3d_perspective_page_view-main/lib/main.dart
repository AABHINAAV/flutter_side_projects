import 'package:flutter/material.dart';
import 'package:perspective_view_3d_page/PageViewHolder.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  PageViewHolder holder;

  PageController _controller;
  double fraction = 0.5;

  @override
  void initState() {
    super.initState();
    holder = PageViewHolder(value: 2.0);
    _controller = PageController(initialPage: 2, viewportFraction: fraction);
    _controller.addListener(() {
      holder.setValue(_controller.page);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('3D Perspective Page View'),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: AspectRatio(
              aspectRatio: 1,
              child: ChangeNotifierProvider<PageViewHolder>.value(
                value: holder,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: 12,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => MyPage(
                    number: index.toDouble(),
                    fraction: fraction,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  final double number;
  final double fraction;
  MyPage({this.number, this.fraction});
  @override
  Widget build(BuildContext context) {
    double value = Provider.of<PageViewHolder>(context).value;
    double diff = number - value;

    final Matrix4 pyMatrix = Matrix4.identity()
      ..setEntry(3, 3, 1 / 0.9) //increasing scale by 90%
      ..setEntry(1, 1, fraction) //changing scale along y axis
      ..setEntry(3, 0, 0.004 * -diff); //changing perspective along x axis

    final Matrix4 shadowMatrix = Matrix4.identity()
      ..setEntry(3, 3, 1 / 1.6) //increasing scale by 60%
      ..setEntry(3, 1, -0.004) //changing scale along y axis
      ..setEntry(3, 0, 0.002 * diff) //changing perspective along x axis
      ..rotateX(1.309);

    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        if (diff <= 1.0 && diff >= -1.0) ...[
          AnimatedOpacity(
            duration: Duration(milliseconds: 100),
            opacity: 1 - diff.abs(),
            child: Transform(
              transform: shadowMatrix,
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
        Transform(
          transform: pyMatrix,
          alignment: FractionalOffset.center,
          child: Container(
            child: Image.asset(
              'assets/image${number.toInt() + 1}.jpg',
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
    );
  }
}
