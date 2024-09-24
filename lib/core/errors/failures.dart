import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage ;

  Failures( this.errMessage);

}

class ServerFailure extends Failures{
  ServerFailure( super.errMessage);

 factory ServerFailure.fromDioError(DioException dioException){//DioException=> Handling All The Exceptions That Occure From Dio
  switch(dioException.type){
    case DioExceptionType.connectionTimeout:
      return ServerFailure("connection Timeout With Api Server");
    case DioExceptionType.sendTimeout:
      return ServerFailure("send Timeout With Api Server");
    case DioExceptionType.receiveTimeout:
      return ServerFailure("receive Timeout With Api Server");
    case DioExceptionType.badCertificate:
      return ServerFailure("Invalid certificate from API server");
    case DioExceptionType.badResponse:
      return ServerFailure.fromResponse(dioException.response!.statusCode, dioException.response!.data);
    case DioExceptionType.cancel:
      return ServerFailure("Request to API server was canceled");
    case DioExceptionType.connectionError:
      return ServerFailure("Connection error occurred");
    case DioExceptionType.unknown:
      return ServerFailure("An unknown error occurred");
    default:
      return ServerFailure("Opps There Was An Error,Please Try Later!");
  }
  
 }
 factory ServerFailure.fromResponse(int? statusCode ,dynamic response ){
  if(statusCode == 400|| statusCode ==401 ||statusCode ==403){
    return ServerFailure(response["erro"]["message"]);
  }
   else if(statusCode == 404){
    return ServerFailure("Your Request Not Found , Try Later!");
  }
    else if(statusCode == 500){
    return ServerFailure("Internel Server Error , Try Later!");
  }
  else{
    return ServerFailure("OppsThere Was An Error,Please Try Later!");
  }
 }

} 