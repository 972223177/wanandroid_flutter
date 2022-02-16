import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:wanandroid_flutter/utils/string_ext.dart';

/// Logger
final logger = Logger();
final _logDateFormatter = DateFormat('yyyy:MM:dd HH:mm:ss');

void logD(Object any) {
  logger.d("${logPrefix()} : $any");
}

String logPrefix() {
  final isolateName = kIsWeb
      ? "web"
      : "${(Isolate.current.debugName.isNullOrEmpty ? "default" : Isolate.current.debugName)}(${Isolate.current.hashCode})";
  return _logDateFormatter.format(DateTime.now()) + "[$isolateName]";
}
