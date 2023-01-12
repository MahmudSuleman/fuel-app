import 'package:fuel/constants/url_constants.dart';
import 'package:http/http.dart';

class MomoSandboxServices {
  static Future<Response> createApiUser({
    required xRefId,
    required ocpSubKey,
  }) async {
    return await post(Uri.parse(kCreateApiUserUrl), headers: {
      'X-Reference-Id': xRefId,
      'Ocp-Apim-Subscription-Key': ocpSubKey
    });
  }

  static Future<Response> getUuid() async {
    return await get(Uri.parse(kUuidUrl));
  }

  // static Future<Response> getApiKey()async{
  //   // return post()
  // }
}
