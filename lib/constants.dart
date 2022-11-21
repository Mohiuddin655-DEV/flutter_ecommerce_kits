import 'package:flutter/material.dart';

class KColors {
  static const primary = Color(0xFF131313);
  static const itemBackgroundColor = Color(0xFFEDECEA);
  static const iconColor = Color(0xFF414345);
  static const tabSelectedTextColor = Color(0xFFFFFFFF);
  static const tabUnselectedTextColor = Color(0xFF414345);
  static const ratingColor = Color(0xFFFA9909);
  static const searchBoxColor = Color(0xFFF5F5F5);
}

class KLevels {
  static const continueText = "Continue";
  static const checkOutText = "Check Out";
  static const searchText = "Search";
  static const popularText = "Popular";
  static const stemwareText = "Stemware";
  static const barwareText = "Barware";
  static const everywareText = "Everyware";

  static const starterScreenTitleText = "Choose Your Perfect Glassware";
  static const starterScreenBodyText =
      "Our glassware collection adds a touch of luxury to your everyday dinner experience.";
  static const homeScreenTitleText1 = "Choose your";
  static const homeScreenTitleText2 = "new glassware";

  static const recommendedForYouText = "Recommended for you";
  static const totalPriceText = "Total price";
  static const itemsText = "items";
  static const inStockText = "In Stock";
  static const outOfStockText = "Out of stock";
  static const suggestedForYouText = "Suggested for you";

  static const startingScreenImg =
      "https://www.healthifyme.com/blog/wp-content/uploads/2022/02/cropped-Red-Wine-1.jpg";

  static const productNetImg1 =
      "https://static-01.daraz.com.bd/p/f4671972dc32fb5bd06165c1b4604b25.jpg";

  static const productNetImg2 =
      "https://media.istockphoto.com/id/155392485/photo/glass-of-beer-isolated-on-white-with-clipping-path.jpg?s=612x612&w=0&k=20&c=D8WwsfijjalGZgUW4Tlbb5dbaAhSkaod_xxr1om7T-E=";
  static const productNetImg3 =
      "https://target.scene7.com/is/image/Target/GUEST_8c6fce23-2ca1-4bde-a1d2-cb02a122c06a";

  static const productsJson = [
    {
      "discount": 30,
      "isStock": true,
      "name": "Wine Glass",
      "photo": productNetImg1,
      "price": 7.99,
      "rating": 4,
      "type": "New arrival",
    },
    {
      "discount": 14,
      "isStock": true,
      "name": "Champagne",
      "photo": productNetImg2,
      "price": 14.99,
      "rating": 5,
      "type": "Premium Selection",
    },
    {
      "discount": 18,
      "isStock": false,
      "name": "Beverage Glass",
      "photo": productNetImg3,
      "price": 7.99,
      "rating": 3,
      "type": "New arrival",
    },
    {
      "discount": 25,
      "isStock": true,
      "name": "Champagne",
      "photo": productNetImg2,
      "price": 14.99,
      "rating": 5,
      "type": "Premium Selection",
    },
    {
      "discount": 23,
      "isStock": true,
      "name": "Wine Glass",
      "photo": productNetImg1,
      "price": 7.99,
      "rating": 2.5,
      "type": "New arrival",
    },
    {
      "discount": 9,
      "isStock": true,
      "name": "Champagne",
      "photo": productNetImg2,
      "price": 14.99,
      "rating": 5,
      "type": "Premium Selection",
    },
    {
      "discount": 35,
      "isStock": false,
      "name": "Beverage Glass",
      "photo": productNetImg3,
      "price": 7.99,
      "rating": 3,
      "type": "New arrival",
    },
    {
      "discount": 25,
      "isStock": true,
      "name": "Champagne",
      "photo": productNetImg2,
      "price": 14.99,
      "rating": 5,
      "type": "Premium Selection",
    },
  ];
}

class KSize {
  static const double defaultPadding = 16;
  static const double defaultMargin = 16;
}
