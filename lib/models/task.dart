class Task {

  String content;
  DateTime timestamp;
  bool done;

  Task({
    required this.content,
    required this.timestamp,
    required this.done,
  });

  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'timestamp': timestamp,
      'done': done,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      content: map['content'] ?? '',
      timestamp: map['timestamp'] ?? DateTime.now(),
      done: map['done'] ?? false,
    );
  }
}
