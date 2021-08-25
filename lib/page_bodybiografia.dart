import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget pageBodyBiografia(String imgUrl, String title, String descricao) {
  return Column(
    children: [
      Expanded(
          child: Image.network(imgUrl)
      ),
      Text(
        title,
        style: TextStyle(
            fontSize: 60, color: Colors.black54, fontWeight: FontWeight.bold),textAlign: TextAlign.center,
      ),
      Text(
          descricao,
          style: TextStyle(fontSize: 20, color: Colors.black26, ),textAlign: TextAlign.center
      ),
    ],
  );
}
