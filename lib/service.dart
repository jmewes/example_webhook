import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'dart:convert';

import 'util.dart';

part 'service.g.dart';

class ExampleService {
  @Route.get('/')
  Future<Response> getRoot(Request request) async {
    return Response.ok('Hello, World!\n');
  }

  @Route.get('/echo/<message>')
  Future<Response> getMessage(Request request, String message) async {
    return Response.ok('$message\n$message\n$message\n');
  }

  @Route.post('/create/<id>/something')
  Future<Response> createSomething(Request request, String id) async {
    var body = await request.jsonBody;
    body['msg'] = '${body['msg']} $id ${body['msg']}';
    return Response(201, body: json.encode(body));
  }

  Router get router => _$ExampleServiceRouter(this);
}
