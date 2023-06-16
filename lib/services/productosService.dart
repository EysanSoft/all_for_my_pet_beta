import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Map<dynamic, dynamic>>> productos() async {
  Map<String, String> headers = {'Content-Type': 'application/json'};
  String api = 'desarrollovan-tis.dedyn.io:4030';
  String path = '/GetProductsByIdSeller/';

  final res = await http.post(
    Uri.http(api, path),
    headers: headers,
    body: json.encode(
      {"idSeller": "1"},
    ),
  );

  if (res.statusCode == 200) {
    final map = json.decode(res.body);
    List<Map<dynamic, dynamic>> listProducts = [];
    for (Map items in map['getProducts']['response']['docs']) {
      if (items['quantity'] != 0) {
        Map<dynamic, dynamic> mapProducs = {
          'urlImage': items['urlImage'],
          'description': items['description'],
          'price': items['price'],
          'name': items['name']
        };
        listProducts.add(mapProducs);
      }
    }
    return listProducts;
  }

  return [];
}