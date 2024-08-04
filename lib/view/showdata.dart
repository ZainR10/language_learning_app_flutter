import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Showdata extends StatefulWidget {
  const Showdata({super.key});

  @override
  State<Showdata> createState() => _ShowdataState();
}

class _ShowdataState extends State<Showdata> {
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

            return ListView.builder(
              itemCount: levels.length,
              itemBuilder: (context, index) {
                final levelName = levels.keys.elementAt(index);
                final topics = levels[levelName] as Map<String, dynamic>;

                return ExpansionTile(
                  title: Text(levelName),
                  children: topics.entries.map((entry) {
                    final topicName = entry.key;
                    final lessons =
                        (entry.value as List<dynamic>).map((lesson) {
                      final lessonMap = lesson as Map<String, dynamic>;
                      return ListTile(
                        title: Text(lessonMap['lessonEnglish']),
                        subtitle: Text(lessonMap['lessonNative']),
                      );
                    }).toList();

                    return ExpansionTile(
                      title: Text(topicName),
                      children: lessons.isNotEmpty
                          ? lessons
                          : [const ListTile(title: Text('No lessons found'))],
                    );
                  }).toList(),
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