// import 'package:http/http.dart';

// class Network {
//   final String url;
//   //2
//   Network(this.url);

//   // 3
//   Future getData() async {
//     print('Calling uri: $url');
//     // 4
//     Response response = await get(Uri.parse(url),headers: {
//       'Authorization':'\$2b\$10\$mD.U39q5dmHEV8YW4bxQIOy7UuheyBCYTjOOIdJ1hki0DYmSrdlgy'
//     });
//     // 5
//     if (response.statusCode == 200) {
//       // 6
//       print(response.body);
//       return response.body;
//     } else {
//       print(response.statusCode);
//     }
//   }
// }