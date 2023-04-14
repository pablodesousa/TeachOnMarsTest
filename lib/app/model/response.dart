import 'package:test_tom/app/model/data.dart';

class ResponseApi {
  ResponseApi({required this.messageApi, required this.data});

  String messageApi;
  Iterable<TeachOnMarsData> data;
}
