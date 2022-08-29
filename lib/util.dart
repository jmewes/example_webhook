import 'dart:convert';

import 'package:shelf/shelf.dart';

extension RequestExtension on Request {
  Future<dynamic> get jsonBody async {
    return json.decode(await readAsString());
  }
}
