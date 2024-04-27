import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
         appBar: AppBar(
           title: Text("Column"),
           centerTitle: true,
           backgroundColor: Colors.blue,
         ),
          body: Center(
            child: Image.asset("images/profile.jpg"),
          ),

        ),
      )
      // home: HomeActivity()
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('Home Page'),
      //     centerTitle: true,
      //     backgroundColor: Colors.blue,
      //     leading: IconButton(
      //       icon: Icon(Icons.message),
      //       onPressed: () {
      //         // Add your camera logic here
      //         print('Message button pressed');
      //       },
      //     ),
      //     actions: [
      //       IconButton(
      //         icon: Icon(Icons.camera_alt),
      //         onPressed: () {
      //           // Add your camera logic here
      //           print('Camera button pressed');
      //         },
      //       ),
      //     ],
      //   ),
      //   body: Center(
      //     child: Text('Hello Developer',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.cyan),),
      //   ),
      // )
    );
  }
}
// class MyHomePage extends StatefulWidget{
//   const MyHomePage({Key? key, required this.title}): super(key: key);
//   final String title;
//
//
//   @override
//   State<MyHomePage> createState()=> _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage>{
//   final List<Map<String, dynamic>> _allUsers = [
//     {"id": 1, "name": "Andy", "age": 29},
//     {"id": 2, "name": "Aragon", "age": 40},
//     {"id": 3, "name": "Bob", "age": 5},
//     {"id": 4, "name": "Barbara", "age": 35},
//     {"id": 5, "name": "Candy", "age": 21},
//     {"id": 6, "name": "Colin", "age": 55},
//     {"id": 7, "name": "Audra", "age": 30},
//     {"id": 8, "name": "Banana", "age": 14},
//     {"id": 9, "name": "Caversky", "age": 100},
//     {"id": 10, "name": "Becky", "age": 32},
//   ];
//   List<Map<String, dynamic>> _foundUsers = [];
//   @override
//   initState() {
//
//     _foundUsers = _allUsers;
//     super.initState();
//   }
//
//   // This function is called whenever the text field changes
//   void _runFilter(String enteredKeyword) {
//     List<Map<String, dynamic>> results = [];
//     if (enteredKeyword.isEmpty) {
//       // if the search field is empty or only contains white-space, we'll display all users
//       results = _allUsers;
//     } else {
//       results = _allUsers
//           .where((user) =>
//           user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
//           .toList();
//       // we use the toLowerCase() method to make it case-insensitive
//     }
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         titleSpacing: 20,
//         centerTitle: false,
//         toolbarHeight: 60,
//         toolbarOpacity: 1,
//         elevation: 6,
//         backgroundColor: Colors.blue,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             TextField(
//               onChanged: (value) => _runFilter(value),
//               decoration: const InputDecoration(
//                   labelText: 'Search', suffixIcon: Icon(Icons.search)),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: _foundUsers.isNotEmpty
//                   ? ListView.builder(
//                 itemCount: _foundUsers.length,
//                 itemBuilder: (context, index) => Card(
//                   key: ValueKey(_foundUsers[index]["id"]),
//                   color: Colors.blue,
//                   elevation: 4,
//                   margin: const EdgeInsets.symmetric(vertical: 10),
//                   child: ListTile(
//                     leading: Text(
//                       _foundUsers[index]["id"].toString(),
//                       style: const TextStyle(fontSize: 24, color:Colors.white),
//                     ),
//                     title: Text(_foundUsers[index]['name'], style:TextStyle(
//                         color:Colors.white
//                     )),
//                     subtitle: Text(
//                         '${_foundUsers[index]["age"].toString()} years old',style:TextStyle(
//                         color:Colors.white
//                     )),
//                   ),
//                 ),
//               )
//                   : const Text(
//                 'No results found',
//                 style: TextStyle(fontSize: 24),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomeActivity extends StatelessWidget{
//   const HomeActivity({super.key});
//
//   MySnackBar(message,context){
//     return ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(message))
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: const Text('My Flutter App'),
//         titleSpacing: 20,
//         centerTitle: false,
//         toolbarHeight: 60,
//         toolbarOpacity: 1,
//         elevation: 6,
//         backgroundColor: Colors.blue,
//         actions: [
//           IconButton(onPressed: (){MySnackBar("comment",context);}, icon: Icon(Icons.comment)),
//           IconButton(onPressed: (){MySnackBar("email",context);}, icon: Icon(Icons.email))
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//           elevation: 10,
//           child: Icon(Icons.add),
//           backgroundColor: Colors.green,
//           onPressed: (){
//             MySnackBar("floating action button", context);
//           }
//       ),
//       body: const Text("Hello World")
//     );
//   }
// }