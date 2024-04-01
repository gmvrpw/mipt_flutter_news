import 'package:flutter_bloc/flutter_bloc.dart';

class Resource<T> {
  final T? data;
  final bool loading;
  Resource({this.loading = false, this.data});
}

abstract class ResourceCubit<T> extends Cubit<Resource<T>> {
  ResourceCubit() : super(Resource<T>());
  Future<void> fetch();
}
