import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkService {
  Future<bool> get isConnected;
}

class NetworkServicesImplement implements NetworkService {
  final InternetConnectionChecker connectionChecker;

  NetworkServicesImplement(this.connectionChecker);
  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
