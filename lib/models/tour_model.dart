import 'dart:ffi';
import 'dart:html';

class Tour {
  
  String CountryName;

  String CityName;

  String TourName;

  String Location;

  String Description;

  double PricePerNight;

  int Rating;

  String HotelImage;

  Tour(
    this.CountryName,
     this.CityName,
      this.TourName,
       this.Location,
      this.Description,
       this.PricePerNight,
        this.Rating,
         this.HotelImage
      );

  String get countryName => CountryName;
  String get cityName => CityName;
  String get tourName => TourName;
  String get location => Location;
  String get description => Description;
  double get pricePerNight => PricePerNight;
  int get rating => Rating;
  String get hotelImage => HotelImage;


  set countryName(String newCountryName){
    CountryName = newCountryName;
  }
   set cityName(String newCityName){
    CityName = newCityName;
  }
   set tourName(String newTourName){
    TourName = newTourName;
  }
   set location(String newLocation){
    Location = newLocation;
  }
   set description(String newDescription){
    Description = newDescription;
  }
   set pricePerNight(double newPricePerNight){
    PricePerNight = newPricePerNight;
  }
   set rating(int newRating){
    Rating = newRating;
  }
   set hotelImage(String newHotelImage){
    HotelImage = newHotelImage;
  }

Map<String , dynamic> toMap(){
  var map = Map<String ,dynamic>();
  map["CountryName"] = CountryName;
  map["CityName"] = CityName;
  map["TourName"] = TourName;
  map["Location"] = Location;
  map["Description"] = Description;
  map["PricePerNight"] = PricePerNight;
  map["Rating"] = Rating;
  map["HotelImage"] = HotelImage;
return map ;
}

Tour.fromObject(dynamic o){

  this.countryName = o["countryName"]; 
  this.cityName = o["CityName"];
  this.tourName = o["TourName"] ;
  this.location = o["Location"] ;
  this.description = o["Description"] ;
  this.pricePerNight = o["PricePerNight"] ;
  this.rating = o["Rating"] ; 
  this.hotelImage = o["HotelImage"] ;

}

}
