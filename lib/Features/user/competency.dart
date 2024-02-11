import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flight/Features/admin/sign_up/controller.dart';
import 'package:flight/Features/admin/sign_up/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompetencyScreen extends StatefulWidget {
  CompetencyScreen({Key? key}) : super(key: key);

  @override
  State<CompetencyScreen> createState() => _CompetencyScreenState();
}

class _CompetencyScreenState extends State<CompetencyScreen> {



  // Future<DocumentSnapshot<Map<String, dynamic>>> getDocument() async {
  //   // Get a reference to the collection
  //   CollectionReference<Map<String, dynamic>> collectionReference =
  //       FirebaseFirestore.instance.collection('Users');
  //
  //   // Get the document by its ID
  //   DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
  //       await collectionReference.doc().get();
  //
  //   // Return the document snapshot
  //   return documentSnapshot;
  // }

  // List<QueryDocumentSnapshot> data = [];
  // SignUpController controller = SignUpController();
  // getData() async {
  //   QuerySnapshot querySnapshot =
  //       await FirebaseFirestore.instance.collection("Users").get();
  //   data.addAll(querySnapshot.docs);
  //   setState(() {});
  // }
  //
  // final form = FirebaseFirestore.instance.collection("Users").add({
  //   "aa": "a",
  // }).then((DocumentReference doc) {
  //   print("${doc.id}");
  // });

  @override
  void initState() {
    // getDocument();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 50.h),
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    child: Text(""),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
