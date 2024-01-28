import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

double? cal(
  String? one,
  String? two,
  String? three,
  String? multipier,
  String? numbband,
) {
  double X = 0.0;
  double Y = 0.0;
  double Y1 = 0.0;
  double Z = 0.0;
  double ans = 0.0;

  /// ??1333333333333333333333333#<#333333322t23771253671571235
  if (numbband == "THREE") {
    // first band
    if (one == "BROWN") {
      X = 1;
    }
    if (one == "RED") {
      X = 2;
    }
    if (one == "ORANGE") {
      X = 3;
    }
    if (one == "YELLOW") {
      X = 4;
    }
    if (one == "GREEN") {
      X = 5;
    }
    if (one == "BLUE") {
      X = 6;
    }
    if (one == "VIOLET") {
      X = 7;
    }
    if (one == "GREY") {
      X = 8;
    }
    if (one == "WHITE") {
      X = 9;
    }

    // second band
    if (two == "BLACK") {
      Y = 0;
    }
    if (two == "BROWN") {
      Y = 1;
    }
    if (two == "RED") {
      Y = 2;
    }
    if (two == "ORANGE") {
      Y = 3;
    }
    if (two == "YELLOW") {
      Y = 4;
    }
    if (two == "GREEN") {
      Y = 5;
    }
    if (two == "BLUE") {
      Y = 6;
    }
    if (two == "VIOLET") {
      Y = 7;
    }
    if (two == "GREY") {
      Y = 8;
    }
    if (two == "WHITE") {
      Y = 9;
    }

    // MULTIPIER BAND
    if (multipier == "BLACK") {
      Z = 1;
      ans = (((X * 10) + Y) * Z);
      return ans;
    }
    if (multipier == "BROWN") {
      Z = 10;
      ans = (((X * 10) + Y) * Z);
      return ans;
    }
    if (multipier == "RED") {
      Z = 100;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000; //k
      return ans;
    }
    if (multipier == "ORANGE") {
      Z = 1000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000; //k
      return ans;
    }
    if (multipier == "YELLOW") {
      Z = 10000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000; //k
      return ans;
    }
    if (multipier == "GREEN") {
      Z = 100000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000000; //M
      return ans;
    }
    if (multipier == "BLUE") {
      Z = 1000000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000000; //M
      return ans;
    }
    if (multipier == "VIOLET") {
      Z = 10000000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000000; //M
      return ans;
    }
    if (multipier == "GREY") {
      Z = 100000000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000000000; //G
      return ans;
    }
    if (multipier == "WHITE") {
      Z = 1000000000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000000000; //G
      return ans;
    }
    if (multipier == "GOLD") {
      Z = 0.1;
      ans = (((X * 10) + Y) * Z);
      return ans;
    }
    if (multipier == "SILVER") {
      Z = 0.01;
      ans = (((X * 10) + Y) * Z);
      return ans;
    }
    if (multipier == "PINK") {
      Z = 0.001;
      ans = (((X * 10) + Y) * Z);
      return ans;
    }
  }
// 333234348696358478235248275428237327812378512289589218423558

  if (numbband == "FOUR") {
    // first band
    if (one == "BROWN") {
      X = 1;
    }
    if (one == "RED") {
      X = 2;
    }
    if (one == "ORANGE") {
      X = 3;
    }
    if (one == "YELLOW") {
      X = 4;
    }
    if (one == "GREEN") {
      X = 5;
    }
    if (one == "BLUE") {
      X = 6;
    }
    if (one == "VIOLET") {
      X = 7;
    }
    if (one == "GREY") {
      X = 8;
    }
    if (one == "WHITE") {
      X = 9;
    }

    // second band
    if (two == "BLACK") {
      Y = 0;
    }
    if (two == "BROWN") {
      Y = 1;
    }
    if (two == "RED") {
      Y = 2;
    }
    if (two == "ORANGE") {
      Y = 3;
    }
    if (two == "YELLOW") {
      Y = 4;
    }
    if (two == "GREEN") {
      Y = 5;
    }
    if (two == "BLUE") {
      Y = 6;
    }
    if (two == "VIOLET") {
      Y = 7;
    }
    if (two == "GREY") {
      Y = 8;
    }
    if (two == "WHITE") {
      Y = 9;
    }

    // MULTIPIER BAND
    if (multipier == "BLACK") {
      Z = 1;
      ans = (((X * 10) + Y) * Z);
      return ans;
    }
    if (multipier == "BROWN") {
      Z = 10;
      ans = (((X * 10) + Y) * Z);
      return ans;
    }
    if (multipier == "RED") {
      Z = 100;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000; //k
      return ans;
    }
    if (multipier == "ORANGE") {
      Z = 1000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000; //k
      return ans;
    }
    if (multipier == "YELLOW") {
      Z = 10000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000; //k
      return ans;
    }
    if (multipier == "GREEN") {
      Z = 100000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000000; //M
      return ans;
    }
    if (multipier == "BLUE") {
      Z = 1000000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000000; //M
      return ans;
    }
    if (multipier == "VIOLET") {
      Z = 10000000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000000; //M
      return ans;
    }
    if (multipier == "GREY") {
      Z = 100000000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000000000; //G
      return ans;
    }
    if (multipier == "WHITE") {
      Z = 1000000000;
      ans = (((X * 10) + Y) * Z);
      ans = ans / 1000000000; //G
      return ans;
    }
    if (multipier == "GOLD") {
      Z = 0.1;
      ans = (((X * 10) + Y) * Z);
      return ans;
    }
    if (multipier == "SILVER") {
      Z = 0.01;
      ans = (((X * 10) + Y) * Z);
      return ans;
    }
    if (multipier == "PINK") {
      Z = 0.001;
      ans = (((X * 10) + Y) * Z);
      return ans;
    }
  }
// ????????????????????????????????????????>>>>>>>>>>>>>>>>>
  if (numbband == "FIVE") {
    // first band
    if (one == "BROWN") {
      X = 1;
    }
    if (one == "RED") {
      X = 2;
    }
    if (one == "ORANGE") {
      X = 3;
    }
    if (one == "YELLOW") {
      X = 4;
    }
    if (one == "GREEN") {
      X = 5;
    }
    if (one == "BLUE") {
      X = 6;
    }
    if (one == "VIOLET") {
      X = 7;
    }
    if (one == "GREY") {
      X = 8;
    }
    if (one == "WHITE") {
      X = 9;
    }

    // second band
    if (two == "BLACK") {
      Y = 0;
    }
    if (two == "BROWN") {
      Y = 1;
    }
    if (two == "RED") {
      Y = 2;
    }
    if (two == "ORANGE") {
      Y = 3;
    }
    if (two == "YELLOW") {
      Y = 4;
    }
    if (two == "GREEN") {
      Y = 5;
    }
    if (two == "BLUE") {
      Y = 6;
    }
    if (two == "VIOLET") {
      Y = 7;
    }
    if (two == "GREY") {
      Y = 8;
    }
    if (two == "WHITE") {
      Y = 9;
    }

    // third band
    if (three == "BLACK") {
      Y1 = 0;
    }
    if (three == "BROWN") {
      Y1 = 1;
    }
    if (three == "RED") {
      Y1 = 2;
    }
    if (three == "ORANGE") {
      Y1 = 3;
    }
    if (three == "YELLOW") {
      Y1 = 4;
    }
    if (three == "GREEN") {
      Y1 = 5;
    }
    if (three == "BLUE") {
      Y1 = 6;
    }
    if (three == "VIOLET") {
      Y1 = 7;
    }
    if (three == "GREY") {
      Y1 = 8;
    }
    if (three == "WHITE") {
      Y1 = 9;
    }

    // MULTIPIER BAND
    if (multipier == "BLACK") {
      Z = 1;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      return ans;
    }
    if (multipier == "BROWN") {
      Z = 10;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000; // k
      return ans;
    }
    if (multipier == "RED") {
      Z = 100;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000; // k
      return ans;
    }
    if (multipier == "ORANGE") {
      Z = 1000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000; // k
      return ans;
    }
    if (multipier == "YELLOW") {
      Z = 10000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000000; // M
      return ans;
    }
    if (multipier == "GREEN") {
      Z = 100000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000000; // M
      return ans;
    }
    if (multipier == "BLUE") {
      Z = 1000000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000000; // M
      return ans;
    }
    if (multipier == "VIOLET") {
      Z = 10000000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000000000; // G
      return ans;
    }
    if (multipier == "GREY") {
      Z = 100000000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000000000; // G
      return ans;
    }
    if (multipier == "WHITE") {
      Z = 1000000000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000000000; // G
      return ans;
    }
    if (multipier == "GOLD") {
      Z = 0.1;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      return ans;
    }
    if (multipier == "SILVER") {
      Z = 0.01;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      return ans;
    }
    if (multipier == "PINK") {
      Z = 0.001;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      return ans;
    }
  }
  // ?/////???????????????????????????ISXXXXXXXXXXXX

  if (numbband == "SIX") {
    // first band
    if (one == "BROWN") {
      X = 1;
    }
    if (one == "RED") {
      X = 2;
    }
    if (one == "ORANGE") {
      X = 3;
    }
    if (one == "YELLOW") {
      X = 4;
    }
    if (one == "GREEN") {
      X = 5;
    }
    if (one == "BLUE") {
      X = 6;
    }
    if (one == "VIOLET") {
      X = 7;
    }
    if (one == "GREY") {
      X = 8;
    }
    if (one == "WHITE") {
      X = 9;
    }

    // second band
    if (two == "BLACK") {
      Y = 0;
    }
    if (two == "BROWN") {
      Y = 1;
    }
    if (two == "RED") {
      Y = 2;
    }
    if (two == "ORANGE") {
      Y = 3;
    }
    if (two == "YELLOW") {
      Y = 4;
    }
    if (two == "GREEN") {
      Y = 5;
    }
    if (two == "BLUE") {
      Y = 6;
    }
    if (two == "VIOLET") {
      Y = 7;
    }
    if (two == "GREY") {
      Y = 8;
    }
    if (two == "WHITE") {
      Y = 9;
    }

    // third band
    if (three == "BLACK") {
      Y1 = 0;
    }
    if (three == "BROWN") {
      Y1 = 1;
    }
    if (three == "RED") {
      Y1 = 2;
    }
    if (three == "ORANGE") {
      Y1 = 3;
    }
    if (three == "YELLOW") {
      Y1 = 4;
    }
    if (three == "GREEN") {
      Y1 = 5;
    }
    if (three == "BLUE") {
      Y1 = 6;
    }
    if (three == "VIOLET") {
      Y1 = 7;
    }
    if (three == "GREY") {
      Y1 = 8;
    }
    if (three == "WHITE") {
      Y1 = 9;
    }

    // MULTIPIER BAND
    if (multipier == "BLACK") {
      Z = 1;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      return ans;
    }
    if (multipier == "BROWN") {
      Z = 10;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000; // k
      return ans;
    }
    if (multipier == "RED") {
      Z = 100;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000; // k
      return ans;
    }
    if (multipier == "ORANGE") {
      Z = 1000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000; // k
      return ans;
    }
    if (multipier == "YELLOW") {
      Z = 10000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000000; // M
      return ans;
    }
    if (multipier == "GREEN") {
      Z = 100000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000000; // M
      return ans;
    }
    if (multipier == "BLUE") {
      Z = 1000000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000000; // M
      return ans;
    }
    if (multipier == "VIOLET") {
      Z = 10000000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000000000; // G
      return ans;
    }
    if (multipier == "GREY") {
      Z = 100000000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000000000; // G
      return ans;
    }
    if (multipier == "WHITE") {
      Z = 1000000000;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      ans = ans / 1000000000; // G
      return ans;
    }
    if (multipier == "GOLD") {
      Z = 0.1;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      return ans;
    }
    if (multipier == "SILVER") {
      Z = 0.01;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      return ans;
    }
    if (multipier == "PINK") {
      Z = 0.001;
      ans = (((X * 100) + (Y * 10) + Y1) * Z);
      return ans;
    }
  }

  return null;
}

String? symbolcal(
  String? multipier,
  String? numbband,
) {
  if (numbband == "THREE") {
    // MULTIPIER BAND
    if (multipier == "BLACK") {
      return "Ω";
    }
    if (multipier == "BROWN") {
      return "Ω";
    }
    if (multipier == "RED") {
      return "kΩ";
    }
    if (multipier == "ORANGE") {
      return "kΩ";
    }
    if (multipier == "YELLOW") {
      return "kΩ";
    }
    if (multipier == "GREEN") {
      return "MΩ";
    }
    if (multipier == "BLUE") {
      return "MΩ";
    }
    if (multipier == "VIOLET") {
      return "MΩ";
    }
    if (multipier == "GREY") {
      return "GΩ";
    }
    if (multipier == "WHITE") {
      return "GΩ";
    }
    if (multipier == "GOLD") {
      return "Ω";
    }
    if (multipier == "SILVER") {
      return "Ω";
    }
    if (multipier == "PINK") {
      return "Ω";
    }
  }

  if (numbband == "FOUR") {
    // MULTIPIER BAND
    if (multipier == "BLACK") {
      return "Ω";
    }
    if (multipier == "BROWN") {
      return "Ω";
    }
    if (multipier == "RED") {
      return "kΩ";
    }
    if (multipier == "ORANGE") {
      return "kΩ";
    }
    if (multipier == "YELLOW") {
      return "kΩ";
    }
    if (multipier == "GREEN") {
      return "MΩ";
    }
    if (multipier == "BLUE") {
      return "MΩ";
    }
    if (multipier == "VIOLET") {
      return "MΩ";
    }
    if (multipier == "GREY") {
      return "GΩ";
    }
    if (multipier == "WHITE") {
      return "GΩ";
    }
    if (multipier == "GOLD") {
      return "Ω";
    }
    if (multipier == "SILVER") {
      return "Ω";
    }
    if (multipier == "PINK") {
      return "Ω";
    }
  }

  if (numbband == "FIVE") {
    // MULTIPIER BAND
    if (multipier == "BLACK") {
      return "Ω";
    }
    if (multipier == "BROWN") {
      return "kΩ";
    }
    if (multipier == "RED") {
      return "kΩ";
    }
    if (multipier == "ORANGE") {
      return "kΩ";
    }
    if (multipier == "YELLOW") {
      return "MΩ";
    }
    if (multipier == "GREEN") {
      return "MΩ";
    }
    if (multipier == "BLUE") {
      return "MΩ";
    }
    if (multipier == "VIOLET") {
      return "GΩ";
    }
    if (multipier == "GREY") {
      return "GΩ";
    }
    if (multipier == "WHITE") {
      return "GΩ";
    }
    if (multipier == "GOLD") {
      return "Ω";
    }
    if (multipier == "SILVER") {
      return "Ω";
    }
    if (multipier == "PINK") {
      return "Ω";
    }
  }

  if (numbband == "SIX") {
    // MULTIPIER BAND
    if (multipier == "BLACK") {
      return "Ω";
    }
    if (multipier == "BROWN") {
      return "kΩ";
    }
    if (multipier == "RED") {
      return "kΩ";
    }
    if (multipier == "ORANGE") {
      return "kΩ";
    }
    if (multipier == "YELLOW") {
      return "MΩ";
    }
    if (multipier == "GREEN") {
      return "MΩ";
    }
    if (multipier == "BLUE") {
      return "MΩ";
    }
    if (multipier == "VIOLET") {
      return "GΩ";
    }
    if (multipier == "GREY") {
      return "GΩ";
    }
    if (multipier == "WHITE") {
      return "GΩ";
    }
    if (multipier == "GOLD") {
      return "Ω";
    }
    if (multipier == "SILVER") {
      return "Ω";
    }
    if (multipier == "PINK") {
      return "Ω";
    }
  }
  return null;
}

double? tolerance(
  String? numbband,
  String? tol,
) {
  if (numbband == "THREE") {
    return 20;
  } else {
    if (tol == "BROWN") {
      return 1;
    }
    if (tol == "RED") {
      return 2;
    }
    if (tol == "ORANGE") {
      return 0.05;
    }
    if (tol == "YELLOW") {
      return 0.02;
    }
    if (tol == "GREEN") {
      return 0.5;
    }
    if (tol == "BLUE") {
      return 0.25;
    }
    if (tol == "VIOLET") {
      return 0.1;
    }
    if (tol == "GREY") {
      return 0.01;
    }
    if (tol == "GOLD") {
      return 5;
    }
    if (tol == "SILVER") {
      return 10;
    } else {
      return 20;
    }
  }

  return null;
}

int? tempcoeff(
  String? numbband,
  String? tempe,
) {
  if (numbband == "SIX") {
    if (tempe == "BLACK") {
      return 250;
    }
    if (tempe == "BROWN") {
      return 100;
    }
    if (tempe == "RED") {
      return 50;
    }
    if (tempe == "ORANGE") {
      return 15;
    }
    if (tempe == "YELLOW") {
      return 25;
    }
    if (tempe == "GREEN") {
      return 20;
    }
    if (tempe == "BLUE") {
      return 10;
    }
    if (tempe == "VIOLET") {
      return 5;
    }
    if (tempe == "GREY") {
      return 1;
    }
  }
  return null;
}

String? value2colour(
  double? resistValue,
  String? numBands,
  String? symb,
) {
// Standard resistor color code
  List<String> colorCodes = [
    "BLACK",
    "BROWN",
    "RED",
    "ORANGE",
    "YELLOW",
    "GREEN",
    "BLUE",
    "VIOLET",
    "GREY",
    "WHITE"
  ];

  // Ensure resistValue is not null
  if (resistValue == null) {
    return null;
  }

  // Ensure numBands is not null
  if (numBands == null) {
    return null;
  }

  // Ensure symb is not null
  if (symb == null) {
    return null;
  }

  // Parse numBands as an integer
  int numBandsInt = int.tryParse(numBands) ?? 0;

  // Adjust resistValue based on the symb
  switch (symb) {
    case 'Ω':
      // Do nothing, resistValue is already in ohms
      break;
    case 'kΩ':
      resistValue *= 1000;
      break;
    case 'MΩ':
      resistValue *= 1000000;
      break;
    case 'GΩ':
      resistValue *= 1000000000;
      break;
    default:
      // Invalid symb
      return null;
  }

  // Calculate the first two digits
  int firstDigit =
      (resistValue / math.pow(10, (math.log(resistValue) / math.ln10).floor()))
          .floor();
  int secondDigit = ((resistValue /
              math.pow(10, (math.log(resistValue) / math.ln10).floor() - 1))
          .floor()) %
      10;

  // Calculate the multiplier (number of trailing zeros)
  int multiplierExponent = (math.log(resistValue) / math.ln10).floor() - 1;

  // Assign colors to bands
  String? color1 = (firstDigit >= 0 && firstDigit < colorCodes.length)
      ? colorCodes[firstDigit]
      : null;
  String? color2 = (secondDigit >= 0 && secondDigit < colorCodes.length)
      ? colorCodes[secondDigit]
      : null;
  String? color3 =
      (multiplierExponent >= 0 && multiplierExponent < colorCodes.length)
          ? colorCodes[multiplierExponent]
          : null;

  if (color1 == null || color2 == null || color3 == null) {
    return null;
  }

  // For 4-band and 5-band resistors, add tolerance band
  if (numBandsInt >= 4) {
    // You can customize the tolerance color based on your requirements
    String toleranceColor = "Gold";
    return '$color1 - $color2 - $color3 - $toleranceColor';
  }

  return '$color1 - $color2 - $color3';
}
