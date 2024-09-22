import 'package:flutter/material.dart';

import '../components/bottom_bar.dart';
import '../components/pod_episode.dart';
import '../components/home_page_bar.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  return const Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: HomePage1(),
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}


class HomePage1 extends StatefulWidget{
  const HomePage1({super.key});

  @override
  State<StatefulWidget> createState() => HomePage1State();

}

class HomePage1State extends State<HomePage1>{
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const HomePageBar(),
      SearchPage(),
      const Expanded(
        flex: 1,
        child : EpisodeScrollView()
      )
    ],);
  }

}


class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter search term',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                  },
                ),
              ),
              onChanged: (value) {
                // 处理输入变化
                print('Search input: $value');
              },
              onSubmitted: (value) {
                // 处理提交搜索操作
                print('Submitted search: $value');
              },
            ),
            // SizedBox(height: 20),
            // // 显示搜索结果的地方
            // Expanded(
            //   child: Center(
            //     child: Text('No results'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

class EpisodeScrollView extends StatelessWidget {
  const EpisodeScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar( // 显示进度条
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children:[
              Episode(),
              Episode(),
              Episode(),
              Episode(),
              Episode(),
              Episode(),
              Episode(),
              Episode(),
              Episode(),
              Episode(),
            ]
          ),
        ),
      ),
    );
  }
}