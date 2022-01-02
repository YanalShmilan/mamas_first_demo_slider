import 'package:flutter/material.dart';
import 'package:mamas_first_slider_demo/dummy_data.dart';
import 'package:mamas_first_slider_demo/models/fashionista.dart';

class FashionistaProvider with ChangeNotifier {
  List<Fashionista> _fashionistas = DUMMY_FASHIONISTA;
  Fashionista selectedFashionista = DUMMY_FASHIONISTA[0];
  List<Fashionista> get fashionistas {
    return [..._fashionistas];
  }

  void changeFashionista(int id) {
    selectedFashionista =
        _fashionistas.firstWhere((fashionista) => fashionista.id == id);
    notifyListeners();
  }
}
