import 'package:fpdart/fpdart.dart';
import 'package:twitter_clone/core/failure.dart';

typedef FuturEither<T> = Future<Either<Failure, T>>;
typedef FuturEitherVoid = FuturEither<void>;
typedef FuturVoid = Future<void>;
