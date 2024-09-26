import 'package:bookly_app/Feature/home/date/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
//-1
abstract class HomeRepo { //this Abstract Class Use To Add The metod Without Implementation
  Future<Either<Failures , List<BookModel>>> fetchFeatureBooks();//(Either)please unerstand this Well -> come from dartz package
  Future<Either<Failures , List<BookModel>>> fetchNewstBooks();
}
