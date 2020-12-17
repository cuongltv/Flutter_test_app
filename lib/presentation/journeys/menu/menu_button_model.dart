import 'package:flutter/material.dart';

class MenuButtonModel {
  final String title;
  final String imagePath;

  MenuButtonModel({@required this.title, @required this.imagePath})
      : assert(title != null, 'title cannot be empty'),
        assert(imagePath != null, 'imagePath cannot be empty');
}
