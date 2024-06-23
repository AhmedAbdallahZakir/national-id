import 'package:flutter/material.dart';

import '../lodic.dart';

class YourDataView extends StatelessWidget {
  YourDataView({
    super.key,
  });
  static String id = "/d";

  String? nationalID;

  //List<String> myData = NationalIdAnalysis.analysis(nationalID);
  List<String> data = [
    ": القرن الذي ولدت فيه",
    ": عام الميلاد",
    ": شهر الميلاد",
    ": يوم الميلاد",
    ": المحافظة",
    ": النوع",
    ": مسلسل التسجيل في السجل",
    ": تاريخ الميلاد"
  ];

  @override
  Widget build(BuildContext context) {
    String NationalId = ModalRoute.of(context)!.settings.arguments as String;
    List<String> myData = NationalIdAnalysis().analysis(NationalId);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Data"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                myData[index],
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
              trailing: Text(
                data[index],
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
          itemCount: data.length,
        ),
      ),
    );
  }
}

class TextData extends StatelessWidget {
  const TextData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "2000-2099",
        style: TextStyle(
          color: Colors.red,
          fontSize: 20,
        ),
      ),
      trailing: Text(
        ":القرن الذي ولدت فيه",
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }
}
