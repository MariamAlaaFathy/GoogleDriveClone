import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:googledrive/filespage.dart';
import 'package:googledrive/sharedpage.dart';
import 'package:googledrive/starredpage.dart';
import 'homepage.dart';

// ignore: unnecessary_late
late int currentPage = 0;

List<String> files = [
  "Revision.pdf",
  "Week1.pdf",
  "Week2.pdf",
  "Week3.pdf",
  "Week4.pdf",
  "Week5.pdf",
  "Week6.pdf",
  "Week8.pdf",
  "Week9.pdf",
  "Week10.pdf",
];

List<Widget> pages = [
  const HomePage(),
  const StarredPage(),
  const SharedPage(),
  const FilesPage(),
];
