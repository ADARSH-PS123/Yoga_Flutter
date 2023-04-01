import 'package:flutter/material.dart';

import 'package:yoga/core/theme/colors.dart';

class AppThemes{
  AppThemes._();
 
 static ThemeData lightTheme(){
  return ThemeData.light().copyWith(
    
     
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),

        elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.whiteColor,
        foregroundColor: AppColor.blackColor,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),

     textTheme: const TextTheme(
 
     displayMedium:TextStyle(
        color: AppColor.whitePure,
        fontSize: 19,
        fontWeight: FontWeight.bold,
      ) ,
   
      titleLarge: TextStyle(
        color: AppColor.whitePure,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: AppColor.whiteColor,
        fontSize: 26,
      
      ),
      titleSmall: TextStyle(
        color: AppColor.whiteColor,
        fontSize: 10,
     
      ),
     
 
    ),
    
  );
  
        


  }
}