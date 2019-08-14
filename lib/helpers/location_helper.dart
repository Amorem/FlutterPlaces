import 'dart:convert';

import 'package:http/http.dart' as http;

const API_KEY = 'AIzaSyBcS4UH1EJ9OmNXjABkRw4SaspTyPfJgXk';

class LocationHelper {
  static String generateLocationPreviewImage(
      {double latitude, double longitude}) {
    return "https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$latitude,$longitude&key=$API_KEY";
  }

  static Future<String> getPlaceAdress(double lat, double long) async {
    final response = await http.get(
        "https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$long&key=$API_KEY");

    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}
