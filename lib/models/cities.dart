import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transporter/util/custom_icons_icons.dart';

class Cities{
  final String capital;
  final String country;
  final IconData symbol;
  final MaterialColor iconColor;

  Cities({this.country,this.capital,this.symbol,this.iconColor});
  static List<Cities> getCities()
  {
    return [
      Cities(country: "United states",capital: "Washington",symbol: CustomIcons.the_white_house,iconColor: Colors.green),
      Cities(country: "India",capital: "New Delhi",symbol: CustomIcons.taj_mahal,iconColor: Colors.orange),
      Cities(country: "United Kingdom",capital: "London",symbol: CustomIcons.big_ben_in_london,iconColor: Colors.red),
      Cities(country: "France",capital: "Paris",symbol: CustomIcons.eiffel_tower,iconColor: Colors.blue),
    ];
    

  }


}