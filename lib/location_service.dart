import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class LocationService {
  final String key = 'AIzaSyAhj0JQH7m6H6dpOU1OHRiKw3tYQnPguXw';

  Future<String> getPlaceId(String input) async {
    final String url =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$key';

    var response = await http.get(Uri.parse(url));

    var json = convert.jsonDecode(response.body);

    var placeID = json['candidates'][0]['place_id'] as String;

    return placeID;
  }

  Future<Map<String, dynamic>> getPlace(String input) async {
    final placeId = await getPlaceId(input);
    final String url =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?place_id=$placeId&key=key';
    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var results = json['result'] as Map<String, dynamic>;
    return results;
  }
}
