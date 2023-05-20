import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pokedex_program/Models/all_pokes_model.dart';

class Pokedex with ChangeNotifier {
  Future<List<Results>> fetchAllPokes() async {
    List<Results> allPokes = [];
    Dio dio = Dio();
    String url = "https://pokeapi.co/api/v2/pokemon/?limit=10000&offset=0";
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      var map = response.data as Map;
      List data = map["results"] as List;
      for (var element in data) {
        allPokes.add(Results.fromJson(element));
      }
      notifyListeners();
    }
    return allPokes;
  }


  Future<List<Results>> fetchAllSpecies() async {
    List<Results> allPokes = [];
    Dio dio = Dio();
    String url = "https://pokeapi.co/api/v2/pokemon-species";
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      var map = response.data as Map;
      List data = map["results"] as List;
      for (var element in data) {
        allPokes.add(Results.fromJson(element));
      }
      notifyListeners();
    }
    return allPokes;
  }


}
