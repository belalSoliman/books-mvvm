import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});
  factory ServerFailure.fromdDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          message: 'Connection timeout with API server',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          message: 'Send timeout with API server',
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          message: 'Receive timeout with API server',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(
          message: 'Request to API server was cancelled',
        );
      default:
        return ServerFailure(
          message: 'Opps, something went wrong',
        );
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic json) {
    if (statusCode == 404) {
      return ServerFailure(
        message: 'Endpoint not found',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        message: "there is problem on server side",
      );
    } else if (statusCode == 401 || statusCode == 403 || statusCode == 400) {
      return ServerFailure(
        message: json['error']['message'],
      );
    } else {
      return ServerFailure(
        message: "something went wrong",
      );
    }
  }
}
