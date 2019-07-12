import 'package:demo_network_json/demo/json/json_serializable.dart';
import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';

class DemoDioHttpClient {
  Future<void> demoGet() async {

    try {
      var dio = Dio();
      dio.transformer = FlutterTransformer();
      Response response = await dio.get("https://demojson.free.beeceptor.com/book");
      print(response);

      var book = Book.fromJson(response.data);
      print(book);
    } catch (e) {
      print(e);
    }
  }
}
