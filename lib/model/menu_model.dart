// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MenuModel {
  final String title;
  final IconData icon;
  final int index;
  final Widget page;
  
  MenuModel({
    required this.title,
    required this.icon,
    required this.index,
    required this.page,
  });
}
