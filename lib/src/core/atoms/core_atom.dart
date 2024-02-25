import 'package:asp/asp.dart';
import 'package:auth_firebase/src/core/exceptions/exceptions.dart';

final globalLoaderState = Atom(
  false,
  key: 'globalLoaderState',
);

final globalExceptionState = Atom<GlobalException?>(
  null,
  key: 'globalExceptionState',
  pipe: interval(const Duration(seconds: 1)),
);
