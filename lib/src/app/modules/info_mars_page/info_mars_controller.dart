import 'package:flutter/material.dart';
import 'package:odysseyapp/src/app/models/NasaDataModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';

class InfoMarsController extends ChangeNotifier{
    String imageUrl = 'https://images-assets.nasa.gov/image/MSFC-1600352/MSFC-1600352~thumb.jpg';
    String title = '';
    String description = '';
    bool isBodyTextChanged = false;



    changeBodyFunction(term){
    isBodyTextChanged = !isBodyTextChanged;
    fetchNasaData(term);
    notifyListeners();
  }

  fetchNasaData(term) async {
  String newTerm = term.replaceAll(' ', '+');
  var url = Uri.parse('https://images-api.nasa.gov/search?q='+newTerm+'&media_type=image');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    NasaDataModel nasaData = NasaDataModel.fromJson(json.decode(response.body));
    int dataIndex = Random().nextInt(nasaData.collection!.items!.length);
    imageUrl = nasaData.collection!.items![dataIndex].links![0].href!;
    title= (nasaData.collection!.items![dataIndex].data![0].title).toString();
    description = (nasaData.collection!.items![dataIndex].data![0].description).toString();
  } else {
    throw Exception('Failed to load character');
  }
}
}
