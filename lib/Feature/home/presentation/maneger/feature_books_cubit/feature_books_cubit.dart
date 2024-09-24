import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feature/home/date/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit() : super(FeatureBookInitial());
}
