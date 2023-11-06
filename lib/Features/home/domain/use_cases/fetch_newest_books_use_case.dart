// ignore_for_file: non_constant_identifier_names

import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homerepo;

  FetchNewestBooksUseCase(this.homerepo);

  @override
  Future<Either<Failure, List<BookEntity>>> Call([NoParam? param]) async {
    return await homerepo.fetchNewestBooks();
  }
}
