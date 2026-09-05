class AppExceptions implements Exception {
  String _message;
  String _prefix;

  AppExceptions(this._message, this._prefix);

  String toString() {
    return "$_prefix $_message";
  }
}

class InternetExceptions extends AppExceptions {
  InternetExceptions(String message) : super(message, "No internet");
}

class RequestTimeout extends AppExceptions {
  RequestTimeout(String message) : super(message, "Request timeout");
}

class ServerExceptions extends AppExceptions {
  ServerExceptions(String message) : super(message, "Server timeout");
}

class InvalidUrlExcepion extends AppExceptions {
  InvalidUrlExcepion(String message) : super(message, "Invalid Url");
}
