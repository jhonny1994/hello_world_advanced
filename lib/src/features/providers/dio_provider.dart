import 'package:dio/dio.dart' as d;
import 'package:hello_world_advanced/consts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'dio_provider.g.dart';

@riverpod
class Dio extends _$Dio {
  @override
  d.Dio build() {
    return d.Dio(d.BaseOptions(baseUrl: baseUrl));
  }
}
