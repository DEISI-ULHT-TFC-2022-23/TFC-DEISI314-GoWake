class Auth {
  String _token="";
  String get token => _token;
  String _juryCode="";
  String get juryCode => _juryCode;
  String _role="";
  String get role => _role;
  String _username="";
  String get username => _username;
  String _email="";
  String get email => _email;
  String _error="";
  String get error => _error;

  Auth.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('error')) {
      _error = json['error'];
    }else{
      _token = json['token'];
      _role = json['role'];
      _email = json['email'];
      _username = json['username'];
      if (json.containsKey('juryCode')) {
        _juryCode = json['juryCode'];
      }
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['role'] = this.role;
    data['juryCode'] = this.juryCode ;
    return data;
  }
}