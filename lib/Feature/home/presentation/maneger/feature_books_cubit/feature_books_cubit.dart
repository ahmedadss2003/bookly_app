import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feature/home/date/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/date/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.homeRepo) : super(FeatureBookInitial());
  final HomeRepo homeRepo ;
  Future<void> fetchFeatureBooks()async {
    emit(FeatureBookInitial()) ;
    var result=await homeRepo.fetchFeatureBooks();
    result.fold((failure){
      emit(FeatureBookFailure(errMessage: failure.errMessage));
    },
     (books){
      emit(FeatureBookSuccess(book: books)) ;
     }
     );
  }
}
