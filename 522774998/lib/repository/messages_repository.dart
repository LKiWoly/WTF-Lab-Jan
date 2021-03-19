import '../database/database.dart';

import '../model/property_message.dart';

class MessagesRepository {
  final DBHelper dbHelper;

  MessagesRepository({
    this.dbHelper,
  });

  Future<List<PropertyMessage>> messages(int idMessagePage) async {
    return await dbHelper.dbMessagesList(idMessagePage);
  }

  void addMessage(PropertyMessage message) {
    dbHelper.insertMessage(message);
  }

  void editMessage(PropertyMessage message) {
    dbHelper.updateMessage(message);
  }

  void removeMessage(int index) {
    dbHelper.deleteMessage(index);
  }
}
