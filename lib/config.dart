class AppConfig {
  //# CONFIG
  static String yourName = "Imanuel";
  static String phoneNumber = "081804945231";
  //# ---------------------------------------
  //# ---------------------------------------

  static String get baseUrl {
    var storage = yourName.replaceAll(" ", "-").toLowerCase();
    storage = "$storage-$phoneNumber";
    return "http://capekngoding.com:8080/$storage/api";
  }
}
