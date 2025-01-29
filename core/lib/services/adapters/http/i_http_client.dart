abstract interface class IHttpClient {
  Future<dynamic> get(String path);
  Future<dynamic> post(String path, Map payload);
  Future<dynamic> put(String path, Map payload);
  Future<dynamic> delete(String path);
  Future<dynamic> download(String path);

  final Map headers;

  addToHeaders(Map headers);

  IHttpClient({required this.headers});
}
