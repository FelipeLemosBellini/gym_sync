import 'package:either_dart/either.dart';
import 'package:gym_sync/core/exceptions/gym_exception.dart';

Future<Either<GymException, T>> executeEither<T>(Function() func) async {
  try {
    return Right(await func.call());
  } on Exception catch (e) {
    return Left(GymException(error: e.toString()));
  }
}
