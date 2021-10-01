import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../model/model.dart';
import '../util/utils.dart';
import '../util/dbhelper.dart';

const menuDelete = "Delete";
final List<String> menuOptions = const <String> [menuDelete];

class DocDetail extends StatefulWidget {
  Doc doc;
  final DbHelper dbh = DbHelper();

  DocDetail(this.doc);

  @override
  State<StatefulWidget> createState() => DocDetailState();
}