class Constants
{
  static final Constants _instance = Constants._internal();

  factory Constants() {
    return _instance;
  }

  Constants._internal();

  String loginImage = "https://www.flaticon.com/free-icon/asset-allocation_11376918?term=expense&page=1&position=31&"
      "origin=search&related_id=11376918";


  // Sample Data
  List<String> items = ["Flutter Description", "Flutter Notes", "Flutter Receivables"];
  List<String> descriptions = ["Google UI toolkit", "Hello World", "Desc 3"];
  final String header = "FlutterFire";
  final String headerAfter = "DataFile ";
  final String addItem = "ADD ITEM";
}