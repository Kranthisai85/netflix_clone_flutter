import 'package:flutter/material.dart';

Widget sliderItem(String img, String movieName) {
  return new Container(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                )),
          )
        ]),
  );
}
