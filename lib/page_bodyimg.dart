import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget pageBodyImg(String imgUrl, String title, String descricao) {
  return Column(
    children: [
      Expanded(
        child: Image.asset(imgUrl)
      ),
      Text(
        title,
        style: TextStyle(
            fontSize: 60, color: Colors.black54, fontWeight: FontWeight.bold),textAlign: TextAlign.center,
      ),
      Text(
          descricao,
          style: TextStyle(fontSize: 40, color: Colors.black26, ),textAlign: TextAlign.center
      ),
    ],
  );
}
