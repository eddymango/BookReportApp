class BookReport {
  final int id;
  final String name;
  final String author;
  final String report;

  BookReport(
      {required this.id,
      required this.name,
      required this.author,
      required this.report});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'author': author,
      'report': report,
    };
  }
}
