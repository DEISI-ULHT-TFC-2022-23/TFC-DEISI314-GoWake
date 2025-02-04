
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../shared/constants.dart';


class SecureStorageService  {
  final _storage = FlutterSecureStorage();

  void writeToken(String token) async {
    await _storage.write(
      key: Constants.ACCESS_TOKEN_KEY,
      value: token,
    );
  }
  void deleteToken() async {
    await _storage.delete(
      key: Constants.ACCESS_TOKEN_KEY,
    );
  }

  Future getToken() async => await _storage.read(key: Constants.ACCESS_TOKEN_KEY);

  void writeIwwfId(String iwwfId) async {
    await _storage.write(
      key: Constants.IWWF_ID,
      value: iwwfId,
    );
  }

  void writeCredentials(String credentials) async {
    await _storage.write(
      key: Constants.CREDENTIALS_KEY,
      value: credentials,
    );
  }

  Future getCredentials() async => await _storage.read(key: Constants.CREDENTIALS_KEY);
  Future getIwwfId() async => await _storage.read(key: Constants.IWWF_ID);

}
