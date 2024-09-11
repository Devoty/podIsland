/// podcasts
/// rss 元信息暂时不管 常用的有 content，itunes，atom
class PodCasts {
  String? id;
  String? title;
  String? subtitle;
  String? description;
  String? author;
  String? generator;
  String? link;
  String? icon;
  String? logo;
  List<String>? categories;
  String? pubDate;
  String? updated;
  String? language;
  String? copyright;
  List<PodCast>? items;
}

class PodCast{
  String? title;
  String? description;
  String? link;
  String? image;
  List<String>? categories;
  String? guid;
  String? pubDate;
  String? author;
  String? comments;
  String? content;
  String? enclosure;

}


