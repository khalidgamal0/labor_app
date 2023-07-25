class UserModel{
 late String name;
 late String phone;
 late String password;
 late String uid;
 UserModel({required this.name,required this.phone,required this.password,required this.uid});
 UserModel.fromJson(Map<String,dynamic>json){
  name=json['name'];
  phone=json['phone'];
  password=json['password'];
  uid=json['uid'];
 }
 Map<String, dynamic>toMap(){
    return{
     'name':name,
     'phone':phone,

     'password':password,
     'uid':uid,
    };
 }
}