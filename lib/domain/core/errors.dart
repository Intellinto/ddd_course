import 'failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encoundtered a ValueFaliure at an unrecoverable point. Terminating';
    return Error.safeToString('$explanation Faliue was $valueFailure');
  }
}
