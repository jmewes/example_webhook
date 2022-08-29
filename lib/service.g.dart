// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$ExampleServiceRouter(ExampleService service) {
  final router = Router();
  router.add('GET', r'/', service.getRoot);
  router.add('GET', r'/echo/<message>', service.getMessage);
  router.add('POST', r'/create/<id>/something', service.createSomething);
  return router;
}
