import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get sum => books.value + pens.value;

  booksIncrement() {
    books.value++;
  }

  booksDecrement() {
    if (books.value <= 0) {
      Get.snackbar("Buying books", "Can not be less than zero",
          icon: Icon(Icons.alarm),
          isDismissible: true,
          barBlur: 20,
          duration: Duration(seconds: 3));
    } else {
      books.value--;
    }
  }

  pensIncrement() {
    pens.value++;
  }

  pensDecrement() {
    if (pens.value <= 0) {
      Get.snackbar("Buying pens", "Can not be less than zero",
          icon: Icon(Icons.alarm),
          isDismissible: true,
          barBlur: 20,
          duration: Duration(seconds: 3));
    } else {
      pens.value--;
    }
  }
}
