import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget pageIndicator(bool currentPage){
  return Container(
    width: currentPage ? 20: 15,
    height: currentPage ? 20: 15,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: currentPage ? Colors.black87 : Colors.black38,
    ),
  );
}