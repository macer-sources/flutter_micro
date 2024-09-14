import "package:core/core.dart";
import "chat_module_impl.dart";

abstract class ChatModule extends BasicModule {
  static final ChatModule _instance = ChatModuleImpl();

  static ChatModule get instance {
    return _instance;
  }

}
