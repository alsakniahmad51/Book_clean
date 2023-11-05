import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homerepo;

  FetchFeaturedBooksUseCase(this.homerepo);
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    return homerepo.fetchFeaturedBooks();
  }
}
