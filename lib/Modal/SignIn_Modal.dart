


class Login{


  //constructor
  Login({
    this.email,
    this.password,


  });

  String? email;
  String? password;


  // factory Register.fromJson(Map<String, dynamic>json) => Register();

  Map<String, dynamic> toJson() => {

    "email": email,
    "password": password,



  };


}


