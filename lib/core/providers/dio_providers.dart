import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(baseUrl: 'http://michellesalon-001-site1.jtempurl.com/api/'),
  ),
);
