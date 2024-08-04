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
            .collection('levels')
            .doc('level1')
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
            final topics = data['topics'] as Map<String, dynamic>?;

            if (topics == null || topics.isEmpty) {
              return const Center(
                child: Text("No topics found"),
              );
            }

            return ListView.builder(
              itemCount: topics.keys.length,
              itemBuilder: (context, index) {
                final topicName = topics.keys.elementAt(index);
                final lessons = topics[topicName] as List<dynamic>?;

                return ExpansionTile(
                  title: Text(topicName),
                  children: lessons != null
                      ? lessons
                          .map((lesson) =>
                              ListTile(title: Text(lesson.toString())))
                          .toList()
                      : [const ListTile(title: Text('No lessons found'))],
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