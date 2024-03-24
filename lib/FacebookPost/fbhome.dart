import 'fbposter.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'postercalss.dart';
import 'shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Faker _faker = Faker();
  late List<Poster> _posts;
  late bool _isLoading;

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _fetchPosts();
  }

  void _fetchPosts() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _posts = List.generate(
          5,
              (index) => Poster(
            title: _faker.lorem.sentence(),
                Content: _faker.lorem.sentences(2).join(' '),
                time: DateTime.now().subtract(Duration(minutes: index + 1)),
          ),
        );
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 4,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Facebook",style: TextStyle(
              color: Colors.white,
            ),)
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search,color: Colors.white,),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.menu,color: Colors.white,),
            onPressed: () {
              // Implement menu functionality
            },
          ),
        ],
      ),
      body: _isLoading ? _buildShimmerList() : _buildPostList(),
    );
  }

  Widget _buildShimmerList() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Shimmerposter();
      },
    );
  }

  Widget _buildPostList() {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        return Item(post: _posts[index]);
      },
    );
  }
}
