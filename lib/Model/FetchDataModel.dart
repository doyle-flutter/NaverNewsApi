
class FetchDataModelWrapper{
  String lastBuildDate;
  int total;
  int start;
  int display;
  List items;

  FetchDataModelWrapper({
    this.lastBuildDate,
    this.items,
    this.start,
    this.display,
    this.total
  }):assert(items != null);

  factory FetchDataModelWrapper.toJson(Map<String, dynamic > e) =>
    FetchDataModelWrapper(
      lastBuildDate: e['lastBuildDate'],
      start: e['start'],
      display: e['display'],
      total: e['total'],
      items: e['items'].map((json) => FetchDataModel.toJson(json)).toList()
    );
}


class FetchDataModel{
  String title;
  String originallink;
  String link;
  String description;
  String pubDate;

  FetchDataModel({
    this.title,
    this.originallink,
    this.link,
    this.description,
    this.pubDate
  }):assert(title != null), assert(description != null);

  factory FetchDataModel.toJson(Map<String, dynamic> e) => FetchDataModel(
    title: e['title'],
    link: e['link'],
    description: e['description'],
    originallink: e['originallink'],
    pubDate: e['pubDate']
  );

}