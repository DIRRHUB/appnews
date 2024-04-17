/// Interface for serializable classes
abstract class Serializable {
  Map<String, dynamic> toJson();
}

typedef Json = Map<String, dynamic>;
