import 'package:dio/dio.dart';
import 'package:poc_clean_arch/src/core/default_error.dart';
import 'package:poc_clean_arch/src/features/login/data/model/authentication.dart';
import 'package:poc_clean_arch/src/features/login/data/source/authentication.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dartz/dartz.dart';

part 'authentication.g.dart';

@RestApi()
abstract class AuthenticationRemoteDataSource
    implements AuthenticationDataSource {
  factory AuthenticationRemoteDataSource(Dio dio) =
      _AuthenticationRemoteDataSource;

  @override
  @POST('/login')
  Future<Either<DefaultError, AuthenticationModel>> authentication(
      {required String username, required String secret});
}
