import 'package:flutter/foundation.dart';
import 'package:flutter_places/models/place.dart';

class Places with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }
}
