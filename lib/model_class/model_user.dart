class ModelUser {
  String? _name;

  String get name => _name!;

  set name(String value) {
    _name = value;
  }

  Map<String, dynamic> mapConverter(){
    return{
      "name" : _name
    };
  }
}