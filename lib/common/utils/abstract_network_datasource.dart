import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:talker/talker.dart';
import 'package:xtravel/common/injection_container.dart';
class Failure {
  final String message;
  final int? code;

  Failure({required this.message, this.code});
}

abstract class AbstractNetworkDatasource {
  final Dio client;

  AbstractNetworkDatasource({required this.client});

  Future<Either<Failure, T>> get<T>({
    required String requestURL,
    Map<String, dynamic>? query,
    required Either<Failure, T> Function(Response) onResponse,
  }) async {
    return _request(
      method: 'GET',
      requestURL: requestURL,
      query: query,
      onResponse: onResponse,
    );
  }

  Future<Either<Failure, T>> post<T>({
    required String requestURL,
    Map<String, dynamic>? query,
    dynamic body,
    required Either<Failure, T> Function(Response) onResponse,
  }) async {
    return _request(
      method: 'POST',
      requestURL: requestURL,
      query: query,
      body: body,
      onResponse: onResponse,
    );
  }

  Future<Either<Failure, T>> put<T>({
    required String requestURL,
    Map<String, dynamic>? query,
    dynamic body,
    required Either<Failure, T> Function(Response) onResponse,
  }) async {
    return _request(
      method: 'PUT',
      requestURL: requestURL,
      query: query,
      body: body,
      onResponse: onResponse,
    );
  }

  Future<Either<Failure, T>> delete<T>({
    required String requestURL,
    Map<String, dynamic>? query,
    dynamic body,
    required Either<Failure, T> Function(Response) onResponse,
  }) async {
    return _request(
      method: 'DELETE',
      requestURL: requestURL,
      query: query,
      body: body,
      onResponse: onResponse,
    );
  }

  Future<Either<Failure, T>> _request<T>({
    required String method,
    required String requestURL,
    Map<String, dynamic>? query,
    dynamic body,
    required Either<Failure, T> Function(Response) onResponse,
  }) async {
    try {
      talker.log("Request: $method, $requestURL");
      final options = Options(method: method);
      final response = await client.request(
        requestURL,
        data: body,
        queryParameters: query,
        options: options,
      );

      // Успешный ответ
      if (response.statusCode == 200 || response.statusCode == 201) {
        return onResponse(response);
      } else {
        return Left(_handleResponseErrors(response));
      }
    } on DioException catch (e) {
      return Left(_handleResponseErrors(e.response));
    } catch (e) {
      return Left(Failure(message: 'Unknown error: $e'));
    }
  }

  Failure _handleResponseErrors(Response? response) {
    if (response == null) {
      return Failure(message: 'No response from server');
    }

    try {
      final responseData = response.data;
      if (responseData is Map<String, dynamic>) {
        final message = responseData['message'] ?? response.statusMessage ?? 'Unknown error';
        final code = responseData['status'] ?? response.statusCode;
        return Failure(message: message.toString(), code: code is int ? code : int.tryParse(code.toString()));
      }

      if (responseData is String) {
        final decoded = json.decode(responseData) as Map<String, dynamic>;
        final message = decoded['message'] ?? response.statusMessage ?? 'Unknown error';
        final code = decoded['status'] ?? response.statusCode;
        return Failure(message: message.toString(), code: code is int ? code : int.tryParse(code.toString()));
      }

      return Failure(message: 'Unexpected error format', code: response.statusCode);
    } catch (_) {
      return Failure(message: 'Error parsing response', code: response.statusCode);
    }
  }
}
