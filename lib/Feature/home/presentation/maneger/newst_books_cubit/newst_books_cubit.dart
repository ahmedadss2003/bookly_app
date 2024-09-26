import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feature/home/date/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/date/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.homeRepo) : super(NewstBooksInitial());
  final HomeRepo homeRepo ;
  Future<void> fetchNewstBooks()async{
    emit(NewstBooksInitial());
    var result =await homeRepo.fetchNewstBooks();
    result.fold(
      (failure){
        NewstBooksFailure(errMessage: failure.errMessage);
      },
      (books){
        emit(NewstBooksSuccess(books: books)) ;
      }
      );
  }
}
