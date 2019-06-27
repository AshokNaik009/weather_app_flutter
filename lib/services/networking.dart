import 'package:http/http.dart' as http;
import 'dart:convert';



class NetworkHelper {


  final String url;
  NetworkHelper({this.url});

  Future getData() async {

    http.Response response = await http.get(url);
    if(response.statusCode == 200) {
      String data = response.body;
      
      return jsonDecode(data);
      // int condition = decodeData['weather'][0]['id'];
      
      // double temprature = decodeData['main']['temp'];
      
      // String cityname = decodeData['name'];
      

    } else {
      print(response.statusCode);
    }


    
  }


}