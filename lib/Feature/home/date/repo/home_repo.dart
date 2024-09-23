import 'package:bookly_app/Feature/home/date/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo { //this Abstract Class Use To Add The metod Without Implementation
  Future<Either<Failures , List<BookModel>>> fetchFeatureBooks();//please unerstand this Well
  Future<Either<Failures , List<BookModel>>> fetchBestSallerBooks();
}
