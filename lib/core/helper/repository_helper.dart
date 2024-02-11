import 'package:appnews/core/base/failure.dart';
import 'package:appnews/core/helper/log_helper.dart';
import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:appnews/data/model/remote/other/message_error_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

Future<Either<Failure, T>> execute<T>(Future<T> Function() operation) async {
  try {
    final result = await operation();
    return Right(result);
  } on DioException catch (e) {
    error(e);
    if (e.response?.data != null) {
      if (e.response?.data['message'] != null) {
        final error = MessageErrorModel.fromJson(e.response?.data as Json);
        return Left(ServerFailure.fromModel(error));
      } else if (e.response?.data['error'] != null) {
        final error = MessageErrorModel.fromJson(e.response?.data['error'] as Json);
        return Left(ServerFailure.fromModel(error));
      } else {
        return Left(UndefinedFailure(e));
      }
    } else {
      return Left(UndefinedFailure(e));
    }
  } catch (e) {
    error(e);
    return Left(UndefinedFailure(e));
  }
}
