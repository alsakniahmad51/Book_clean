import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(NewestBooksLoading());

    var result = await fetchNewestBooksUseCase.Call();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errmessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
