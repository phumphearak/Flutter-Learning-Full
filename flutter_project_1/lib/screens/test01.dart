import 'package:flutter/material.dart';
import 'quote.dart';

class ExamList extends StatefulWidget {
  const ExamList({super.key});

  @override
  State<ExamList> createState() => _ExamListState();
}

class _ExamListState extends State<ExamList> {
  // ths list string
  List<Quote> quotes = [Quote(author: 'Oscar wile', text: 'Be Myself')];

  WidgetQuoteTamplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Column(
        children: <Widget>[
          Text(quote.text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Eaxmple List'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map(
              (quote) => Text('${quote.text} - ${quote.author}'),
            )
            .toList(),
      ),
    );
  }
}

// class Test extends StatelessWidget {
//   const Test({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Text('Profile'),
//       ),
//     );
//   }
// }
