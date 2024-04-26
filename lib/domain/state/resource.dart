class Resource<T> {
  const Resource({this.loading = false, this.data});
  final T? data;
  final bool loading;
}
