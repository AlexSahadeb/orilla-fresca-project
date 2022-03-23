import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/page/welcomepage.dart';
import 'package:orilla_fresca_app/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Raleway"),
        debugShowCheckedModeBanner: false,
        title: 'Orilla Fresca',
        home: SplashScreen(
          duration: 3,
          goToPage: WelComePage(),
        ));
  }
}




// class ScrechDelegay extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(
//               onPressed: () {
//                 showSearch(context: context, delegate: MySearchDelegate());
//               },
//               icon: Icon(Icons.search))
//         ],
//       ),
//     );
//   }
// }

// // ignore: non_constant_identifier_names
// class MySearchDelegate extends SearchDelegate {
//   List<String> searchResult = [
//     "Brazil",
//     "China",
//     "India",
//     "itr",
//     'bfsdfdgf',
//     "Russia",
//     "USA"
//   ];
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     // TODO: implement buildActions
//     IconButton(
//         onPressed: () {
//           close(context, null);
//         },
//         icon: Icon(
//           Icons.arrow_back_ios,
//           color: Colors.black,
//         ));
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     // TODO: implement buildLeading
//     IconButton(
//         onPressed: () {
//           if (query.isEmpty) {
//             close(context, null);
//           } else {
//             query = "";
//           }
//         },
//         icon: Icon(
//           Icons.clear,
//           color: Colors.black,
//         ));
//   }

//   @override
//   Widget buildResults(BuildContext context) => Center(
//         child: Text(
//           query,
//           style: TextStyle(color: Colors.red, fontSize: 56),
//         ),
//       );
//   // TODO: implement buildResults

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // TODO: implement buildSuggestions
//     List<String> suggestions = searchResult.where((searchResult) {
//       final result = searchResult.toLowerCase();
//       final input = query.toLowerCase();
//       return result.contains(input);
//     }).toList();
//     return ListView.builder(
//         itemCount: suggestions.length,
//         itemBuilder: (context, index) {
//           final suggeestion = suggestions[index];
//           return Card(
//             elevation: 10,
//             child: ListTile(
//                 title: Text(suggeestion),
//                 onTap: () {
//                   query = suggeestion;
//                   showResults(context);
//                 },
//                 trailing: IconButton(
//                     onPressed: () {

//                     },
//                     icon: Icon(Icons.clear))),
//           );
//         });
//   }
// }
