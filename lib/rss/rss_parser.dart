
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:xml/xml.dart';
import '../util/rss_feed.dart';






PodCasts parse(String url){
  // RSS feed
  Client client = http.Client();
  try {
    client.get(Uri.parse(url)).then((response) {
      return response.body;
    }).then((bodyString) {

      final document = XmlDocument.parse(bodyString);
      XmlElement channelElement;
      Iterable<XmlElement> iterable;
      try {
        // yan
        XmlElement xmlElement = document.rootElement;

        if(xmlElement.localName =='rss'){
          print("rss");
        }

        if(xmlElement.localName =='feed'){
          print("feed");
        }



      } on StateError {
        throw ArgumentError('channel not found');
      }


      // final channel = RssFeed.parse(bodyString);
      // return channel;
    });
  } on Error {
    print("error");
    throw ArgumentError('channel not found');
  }


  // // RSS feed
  // try {
  //   client.get(Uri.parse('https://developed.apple.com/news/releases/rss/releases.rss'))
  //       .then((response) {
  //     return response.body;
  //   }).then((bodyString) {
  //     final channel = AtomFeed.parse(bodyString);
  //     return channel;
  //   });
  // } on Error {
  //   print("error");
  //   throw ArgumentError('channel not found');
  // }



  return PodCasts();
}