import 'package:bookly_app/Feature/home/date/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/date/repo/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utilts/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

//-2
class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;
  
  HomeRepoImpl({required this.apiServices});
  
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewstBooks() async {
    try {
      var data = await apiServices.get(endPoint: "volumes?q=subject:programming&filter=free-ebooks&orderBy=newest");
      
        List<BookModel>books= (data["items"] as List).map((item){
          // Ensure each item is a Map<String, dynamic> and then convert it to BookModel
          return BookModel.fromJson(item as Map<String, dynamic>);
        }
        ).toList();

        return right(books);
     
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var data = await apiServices.get(endPoint: "volumes?q=subject: programming&filter=free-ebooks");
      
      if (data["items"] != null) {
        List<BookModel> books = (data["items"] as List).map((item) {
          return BookModel.fromJson(item as Map<String, dynamic>);
        }).toList();
        
        return right(books);
      } else {
        return left(ServerFailure("No items found"));
      }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
