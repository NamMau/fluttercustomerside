class ClassInstance {
  final int instanceID;
  final String date; // Format: YYYY-MM-DD
  final String teacher;
  final String? comments; // Optional field

  ClassInstance({
    required this.instanceID,
    required this.date,
    required this.teacher,
    this.comments,
  });

  factory ClassInstance.fromJson(Map<String, dynamic> json) {
    return ClassInstance(
      instanceID: json['instanceID'],
      date: json['date'],
      teacher: json['teacher'],
      comments: json['comments'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'instanceID': instanceID,
      'date': date,
      'teacher': teacher,
      'comments': comments,
    };
  }
}
