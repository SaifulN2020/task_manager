class ResponseObject {
  bool isSuccess;
  final int statusCode;
  final dynamic responseBody;
  final String? errorMessage;

  ResponseObject(
      {required this.isSuccess,
      required this.statusCode,
      this.errorMessage,
      this.responseBody = ""});
}
