import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:test_tom/app/model/data.dart';
import 'package:test_tom/app/model/response.dart';

const String _endpoint =
    String.fromEnvironment('endpoint');

class ApiProvider {
  Future<ResponseApi> getData() async {
    final _dio = Dio();
    try {
      final _result = await _dio.get<dynamic>(_endpoint);
      if (_result.statusCode == 200) {
        final list = _result.data as List<dynamic>;
        final data = list.map(
          (dynamic e) => TeachOnMarsData.fromJson(e as Map<String, dynamic>),
        );
        return ResponseApi(messageApi: _result.statusMessage ?? '',data: data);
      }
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print('Exception occured: $error stackTrace: $stacktrace');
        return ResponseApi(messageApi: error.toString(),data: []);
      }
    }
    return ResponseApi(messageApi: '',data: []);
  }
}
