import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Param> {
  // ignore: non_constant_identifier_names
  Future<Either<Failure, Type>> Call([Param param]);
}

class NoParam {}
