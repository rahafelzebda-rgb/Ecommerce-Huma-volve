import 'package:dio/dio.dart';
import 'package:ecommerce_app_huma_volve/core/failure/failure.dart';

class ErrorHandiling {
  static Failure handel(dynamic exception){
    if (exception is DioException){
      return _handelRemoteError(exception.toString());}
    return Failure(failureMessage: "Un Expected Error");
  }

  static Failure _handelRemoteError (String message){
    final errorMessage=message.trim();
    if(errorMessage.contains("401")||
        errorMessage.contains("Unauthorized")||
        errorMessage.contains("Unauthenticated")){
      return const Failure(failureMessage: "Unauthorized");}

    if (errorMessage.contains("403")||
        errorMessage.contains("Forbidden")){
      return Failure(failureMessage: "Forbidden");
    }

    if (errorMessage.contains("404")||
        errorMessage.contains("Not Found")){
      return Failure(failureMessage: "Not Found");
    }

    if (errorMessage.contains("422")||
        errorMessage.contains("Unprocessable Content")){
      return Failure(failureMessage: "Unprocessable Content");
    }


    if (errorMessage.contains("500")||
        errorMessage.contains("Internal Server Error")){
      return Failure(failureMessage: "Internal Server Error");
    }

    if(errorMessage.contains("SocketException")||
        errorMessage.contains("Connection failed")||
        errorMessage.contains("HandshakeException")){
      return const Failure(failureMessage: "SocketException");}

    if (errorMessage.contains("Timeout")||
        errorMessage.contains("Dealine")){
      return Failure(failureMessage: "Dealine");
    }
    if(errorMessage.contains("TypeError")||
        errorMessage.contains("FormatException")){
      return const Failure(failureMessage: "FormatException");}

if(errorMessage.isNotEmpty&&
!errorMessage.contains("Exception")&&
    !errorMessage.contains("Error")){
  return const Failure(failureMessage: "FormatException");}
return const Failure(failureMessage: "Exception");
  }





}