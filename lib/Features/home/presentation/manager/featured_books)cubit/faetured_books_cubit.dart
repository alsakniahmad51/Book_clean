import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:meta/meta.dart';

part 'faetured_books_state.dart';

class FaeturedBooksCubit extends Cubit<FaeturedBooksState> {
  FaeturedBooksCubit() : super(FaeturedBooksInitial());
}
