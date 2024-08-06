import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Showdata extends StatefulWidget {
  const Showdata({super.key});

  @override
  State<Showdata> createState() => _ShowdataState();
}

class _ShowdataState extends State<Showdata> {
  final String levelToFetch = 'level1'; // Specify the level you want to fetch
  final String topicToFetch =
      'Greetings'; // Specify the topic you want to fetch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show Data'),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('languages')
            .doc('urdu')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          } else if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(
              child: Text("No data available"),
            );
          } else {
            final data = snapshot.data!.data() as Map<String, dynamic>;
            final levels = data['levels'] as Map<String, dynamic>;

            // Fetch the specific level
            final specificLevel = levels[levelToFetch] as Map<String, dynamic>?;

            if (specificLevel == null) {
              return const Center(
                child: Text("Level not found"),
              );
            }

            // Fetch specific topic
            final specificTopic = specificLevel[topicToFetch] as List<dynamic>?;

            if (specificTopic == null) {
              return const Center(
                child: Text("Topic not found"),
              );
            }

            return ListView.builder(
              itemCount: specificTopic.length,
              itemBuilder: (context, index) {
                final lessonMap = specificTopic[index] as Map<String, dynamic>;

                return Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        lessonMap['lessonEnglish'],
                      ),
                      Text(
                        lessonMap['lessonNative'],
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}



// StreamBuilder<QuerySnapshot>(
//   stream: FirebaseFirestore.instance.collection('Users').snapshots(),
//   builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//       return const Center(
//         child: CircularProgressIndicator(),
//       );
//     } else if (snapshot.hasError) {
//       return Center(
//         child: Text("Error: ${snapshot.error}"),
//       );
//     } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//       return const Center(
//         child: Text("No data available"),
//       );
//     } else {
//       return ListView.builder(
//         itemCount: snapshot.data!.docs.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             leading: CircleAvatar(
//               child: Text("${index + 1}"),
//             ),
//             title: Text("${snapshot.data!.docs[index]["Title"]}"),
//             subtitle:
//                 Text("${snapshot.data!.docs[index]["Description"]}"),
//           );
//         },
//       );
//     }
//   },
// ),
