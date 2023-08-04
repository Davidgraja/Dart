void main(List<String> args) {
  getUser('100', (Map user) {
    print(user);
  });
}

void getUser(String id, Function callback) {
  Map user = {'id': id, 'name': 'Juan Carlos', 'lastName': 'Gomez'};

  callback(user);
}
