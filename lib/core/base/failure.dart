import 'package:appnews/core/enums/server_code_enum.dart';
import 'package:appnews/data/model/remote/other/message_error_model.dart';
import 'package:equatable/equatable.dart';

/// Failure is a contract class for handling errors/failures.
/// Every feature specific failure should extend [Failure] class.
/// Failure types: ServerFailure, UndefinedFailure, UnimplementedFailure
abstract class Failure extends Equatable {
  final String message;
  const Failure({
    required this.message,
  });
}

class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    required this.error,
    required this.statusCode,
  });
  final String error;
  final ServerCode statusCode;

  factory ServerFailure.fromModel(MessageErrorModel model) {
    return ServerFailure(
      message: model.message.toString(),
      error: model.error.toString(),
      statusCode: ServerCode.values.firstWhere(
        (element) => element.code == model.statusCode,
        orElse: () => ServerCode.badRequest,
      ),
    );
  }

  @override
  List<Object?> get props => [message, error, statusCode];
}

class UndefinedFailure extends Failure {
  factory UndefinedFailure(dynamic e) {
    return UndefinedFailure._(message: 'Failure: $e');
  }
  const UndefinedFailure._({
    required super.message,
  });

  factory UndefinedFailure.empty() {
    return UndefinedFailure(null);
  }

  @override
  List<Object?> get props => [message];
}

class UnimplementedFailure extends Failure {
  const UnimplementedFailure() : super(message: 'Unimplemented');

  @override
  List<Object?> get props => [message];
}
