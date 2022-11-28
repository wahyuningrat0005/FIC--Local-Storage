import 'package:example/core.dart';
import 'package:flutter/material.dart';

snackbarSuccess(String message) {
  var snackBar = SnackBar(
    backgroundColor: successColor,
    content: Text(message),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarInfo(String message) {
  var snackBar = SnackBar(
    backgroundColor: infoColor,
    content: Text(message),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarWarning(String message) {
  var snackBar = SnackBar(
    backgroundColor: warningColor,
    content: Text(message),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}
