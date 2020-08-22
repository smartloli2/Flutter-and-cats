import 'package:flutter/material.dart';
import 'cat_info.dart';

class CatBreedsPage extends StatefulWidget {
  /// Constructs a [CatBreedsPage] with the title that the AppBar will use.
  CatBreedsPage({Key key, this.title}) : super(key: key);

  // Title arg
  final String title;

  // Create state
  @override
  _CatBreedsPageState createState() => _CatBreedsPageState();
}

class _CatBreedsPageState extends State<CatBreedsPage> {
  // Init state
  @override
  void initState() {
    super.initState();
  }

  // Build page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Adds the title for the AppBar using the title field
      appBar: AppBar(
        title: Text(widget.title),
      ),

      /// Adds a body that uses the [ListView.builder] method
      body: ListView.builder(
          // Sets the count to 0 for now, since you don’t have any items yet
          itemCount: 0,
          itemBuilder: (context, index) {
            // For every card, you want to go to the CatInfo page
            // Here, you use the Navigator to push that card
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CatInfo(catId: 'id', catBreed: 'Name');
                }));
              },

              /// Creates a [Card widget] with padding
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),

                  /// Adds a [ListTile] that has a title and description
                  child: ListTile(
                    title: Text('Breed Name'),
                    subtitle: Text('Breed Description'),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
