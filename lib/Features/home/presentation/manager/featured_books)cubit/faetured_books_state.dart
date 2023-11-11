part of 'faetured_books_cubit.dart';

@immutable
abstract class FaeturedBooksState {}

class FaeturedBooksInitial extends FaeturedBooksState {}

class FaeturedBooksLoading extends FaeturedBooksState {}

class FaeturedBooksFailure extends FaeturedBooksState {
  final String errmassage;

  FaeturedBooksFailure(this.errmassage);
}

class FaeturedBooksSuccess extends FaeturedBooksState {
  final List<BookEntity> books;

  FaeturedBooksSuccess(this.books);
}
