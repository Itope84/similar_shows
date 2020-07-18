import 'package:flutter/material.dart';
import 'package:similar_apps/layouts/base_layout.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    double _bodyHeight = _height < 700 ? _height * 0.7 : _height - 250;

    print("height: $_height, width: $_width");
    return BaseLayout(
      child: Container(
        color: Color(0xff5ba0d3),
        child: Column(
          children: <Widget>[
            Container(
              height: _height - _bodyHeight,
              padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hello, what do you want to watch ?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.white),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(70.0),
                            borderSide: BorderSide.none),
                        fillColor: Color.fromRGBO(254, 254, 254, 0.3),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 15.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: _bodyHeight,
              decoration: BoxDecoration(
                color: Color(0xff2c3949),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
        // child: Stack(
        //   fit: StackFit.expand,
        //   children: <Widget>[
        //     Container(

        //         child: SizedBox(
        //           height: 100,
        //           width: 100,
        //           child: Container(
        //             color: Colors.green,
        //           ),
        //         )),
        //     Positioned(
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: Color(0xff2c3949),
        //           borderRadius: BorderRadius.circular(20),
        //         ),
        //       ),
        //       bottom: 0.0,
        //       height: _bodyHeight,
        //       width: MediaQuery.of(context).size.width,
        //     )
        //   ],
        // ),
      ),
    );
  }
}
