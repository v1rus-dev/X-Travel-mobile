import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:xtravel/common/injection_container.dart';
import 'package:xtravel/common/utils/abstract_network_datasource.dart';

abstract class XtravelAbstractNetworkDatasource
    extends AbstractNetworkDatasource {
  XtravelAbstractNetworkDatasource() : super(client: locator<Dio>());
  static const String apiUrl = 'http://192.168.100.4:8080';

  @override
  Future<Either<Failure, T>> get<T>({
    required String requestURL,
    Map<String, dynamic>? query,
    required Either<Failure, T> Function(Response) onResponse,
  }) {
    return super.get(
      requestURL: apiUrl + requestURL,
      query: query,
      onResponse: onResponse,
    );
  }

  @override
  Future<Either<Failure, T>> post<T>({
    required String requestURL,
    Map<String, dynamic>? query,
    dynamic body,
    required Either<Failure, T> Function(Response) onResponse,
  }) {
    return super.post(
      requestURL: apiUrl + requestURL,
      query: query,
      body: body,
      onResponse: onResponse,
    );
  }

  @override
  Future<Either<Failure, T>> put<T>({
    required String requestURL,
    Map<String, dynamic>? query,
    dynamic body,
    required Either<Failure, T> Function(Response) onResponse,
  }) {
    return super.put(
      requestURL: apiUrl + requestURL,
      query: query,
      body: body,
      onResponse: onResponse,
    );
  }

  @override
  Future<Either<Failure, T>> delete<T>({
    required String requestURL,
    Map<String, dynamic>? query,
    dynamic body,
    required Either<Failure, T> Function(Response) onResponse,
  }) {
    return super.delete(
      requestURL: apiUrl + requestURL,
      query: query,
      body: body,
      onResponse: onResponse,
    );
  }
}
