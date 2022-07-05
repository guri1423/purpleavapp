class SignUpResponseModel {
  final String token;
  final String error;

  SignUpResponseModel({required this.token, required this.error});

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) {
    return SignUpResponseModel(
      token: json["token"] != null ? json["token"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class SignUpRequestModel {
  String name;
  String email;
  String phoneNo;
  String password;

  SignUpRequestModel({
    required this.name,
    required this.email,
    required this.phoneNo,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'full_name' : name.trim(),
      'email': email.trim(),
      'phone': phoneNo.trim(),
      'password': password.trim(),

    };
    return map;
  }


}