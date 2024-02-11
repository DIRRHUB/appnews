enum ServerCode {
  success(200),
  informationNotAvailable(204),
  badRequest(400),
  userLimit(401),
  forbidden(403),
  internal(500),
  serviceUnavailable(503);

  final int code;
  const ServerCode(this.code);
}
