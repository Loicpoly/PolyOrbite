import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _words = <WordPair>[];
  final _saved_word = <WordPair>{};
  Widget _buildList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      // TODO: Ask about this line item and context ?? comprends pas ça vient d'ou
      itemBuilder: (context, item) {
        if (item.isOdd) return const Divider();

        final index = item ~/ 2;
        //number of wordpair in the list minus the divider

        if (index >= _words.length) {
          _words.addAll(generateWordPairs().take(1));
        }
        return _buildRow(_words[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadysaved = _saved_word.contains(pair);

    return ListTile(
      title: Text(pair.asPascalCase),
      trailing: Icon(
        alreadysaved ? Icons.favorite : Icons.favorite_border,
        color: alreadysaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadysaved) {
            _saved_word.remove(pair);
          } else {
            _saved_word.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      final Iterable<ListTile> tiles = _saved_word.map((WordPair pair) {
        return ListTile(title: Text(pair.asPascalCase));
      });
      final List<Widget> divided =
          ListTile.divideTiles(context: context, tiles: tiles).toList();
      return Scaffold(
        appBar: AppBar(title: const Text('Save Word pairs')),
        body: ListView(
          children: divided,
        ),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: const Text(
            'First_App',
          ),
          actions: <Widget>[
            IconButton(onPressed: _pushSaved, icon: const Icon(Icons.list))
          ],
        ),
        body: _buildList());
  }
}
