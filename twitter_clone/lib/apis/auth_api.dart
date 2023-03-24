import 'package:appwrite/appwrite.dart';
import 'package:fpdart/fpdart.dart';
import 'package:twitter_clone/core/core.dart';

abstract class IAuthAPI {
  FuturEither<Account> signUp({
    required String email,
    required String password,
  });
}

class AuthAPI implements IAuthAPI {
  final Account _account;
  AuthAPI({required Account account}) : _account = account;
  @override
  FuturEither<Account> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final account = await _account.create(
        userId: ID.unique(),
        email: email,
        password: password,
      );
      return right(account as Account);
    } on AppwriteException catch (e, stackTrace) {
      return left(Failure(e.message ?? "Some unexpected error occurred.",
          stackTrace as String));
    } catch (e, stackTrace) {
      return left(Failure(e.toString(), stackTrace as String));
    }
  }
}
