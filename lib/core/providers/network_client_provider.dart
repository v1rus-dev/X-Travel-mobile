import 'package:dio/dio.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:xtravel/common/injection_container.dart';

class NetworkClientProvider {
  static Dio client = Dio();

  static Future<void> init({
    bool useTalker = false,
  }) async {
    client.interceptors.clear();

    if (useTalker) {
      client.interceptors.add(TalkerDioLogger(talker: locator()));
    }
  }
}
