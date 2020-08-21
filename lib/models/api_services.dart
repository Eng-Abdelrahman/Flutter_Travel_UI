import 'dart:convert' as convert;
import 'package:Tourism_App/models/tour_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static var TourList = 'https://localhost:44332/api/Tour/GetAllTours';

  static Future<List<Tour>> GetToursList() async {
    var data = await http.get(TourList);

    var jsonData = convert.json.decode(data.body);

    List<Tour> tours = [];

    for (var t in jsonData) {
      Tour tour = Tour(
          t["CountryName"],
          t["CityName"],
          t["TourName"],
          t["Location"],
          t["Description"],
          t["PricePerNight"],
          t["Rating"],
          t["HotelImage"]);

      tours.add(tour);

      print(tours.length);
      
    }
  }
}
