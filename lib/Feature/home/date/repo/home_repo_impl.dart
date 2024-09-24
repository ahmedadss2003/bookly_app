import 'package:bookly_app/Feature/home/date/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/date/repo/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utilts/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

//-2
class HomeRepoImpl implements HomeRepo{
  final ApiServices apiServices ;

  HomeRepoImpl({required this.apiServices});
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsedBooks() async{
  try {
  var data = await apiServices.get(endPoint:"volumes?q=subject: programming&filter=free-ebooks&orderBy=newest") ;
  List<BookModel> book =[]  ;
  for (var item in data["items"]) {
    book.add(item);
  }
  return right(book);
}  catch (e) {
  if(e is DioException){
    return left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
}
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks()async {
  try {
  var data = await apiServices.get(endPoint:"volumes?q=subject: programming&filter=free-ebooks") ;
  List<BookModel> book =[]  ;
  for (var item in data["items"]) {
    book.add(item);
  }
  return right(book);
}  catch (e) {
  if(e is DioException){
    return left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
}
  }

}