// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

// ignore: duplicate_ignore
class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homerepo;

  FetchFeaturedBooksUseCase(this.homerepo);

  // ignore: non_constant_identifier_names
  @override
  Future<Either<Failure, List<BookEntity>>> Call([NoParam? param]) async {
    return await homerepo.fetchFeaturedBooks();
  }
}
