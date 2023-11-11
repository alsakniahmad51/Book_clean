import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/use_cases/fetch_featured_books_use_case.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'faetured_books_state.dart';

class FaeturedBooksCubit extends Cubit<FaeturedBooksState> {
  FaeturedBooksCubit(this.fetchFeaturedBooksUseCase)
      : super(FaeturedBooksInitial());
  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(FaeturedBooksLoading());

    var result = await fetchFeaturedBooksUseCase.Call();
    result.fold((failure) {
      emit(FaeturedBooksFailure(failure.errmessage));
    }, (books) {
      emit(FaeturedBooksSuccess(books));
    });
  }
}
