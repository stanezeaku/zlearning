// Copyright Stanely Ezeaku © 2022.
import 'package:flutter/material.dart';

const appColor = Color(0xFF3AFFDF);
const bgcolor = Color(0xFF33333D);
const ahcolor = Color(0xFF212121);

headText() {
  return const TextStyle(
      fontSize: 18.0, fontFamily: 'semi-bold', color: Colors.white);
}

simpleText() {
  return const TextStyle(fontFamily: 'regular', fontSize: 14);
}

simpleButton() {
  return ElevatedButton.styleFrom(
    elevation: 0,
    primary: appColor,
    onPrimary: Colors.black,
    minimumSize: const Size.fromHeight(50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
}

simpleInputIconText(text, icn) {
  return InputDecoration(
      hintText: "$text",
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15)),
      prefixIcon: icn,
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16));
}

simpleInputText(text) {
  return InputDecoration(
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6.0)),
    ),
    hintText: text,
    hintStyle: TextStyle(color: Colors.grey.shade400),
    filled: true,
    fillColor: bgcolor,
  );
}

searchbar() {
  return TextField(
    style: const TextStyle(color: Colors.white),
    decoration: InputDecoration(
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      hintText: 'Search here...',
      prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
      hintStyle: TextStyle(color: Colors.grey.shade400),
      filled: true,
      fillColor: bgcolor,
    ),
  );
}
