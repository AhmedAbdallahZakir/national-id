import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/custom_text_field.dart';
import '../helper/show_snack_bar.dart';
import 'your_data_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  static String id = '/';

  String nationalID = "";

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Data App"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                onChanged: (data) {
                  nationalID = data;
                },
                inputType: TextInputType.number,
                hintText: "National ID",
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                onTap: () {
                  //String centuryCode = nationalID.substring(0, 1);
                  // String yearDigit = nationalID.substring(1, 3);
                  // String month = nationalID.substring(3, 5);
                  // String day = nationalID.substring(5, 7);
                  // String cityCode = nationalID.substring(7, 9);
                  // String sequence = nationalID.substring(9);
                  // String gender = "ذكر";
                  // var currDate = DateTime.now();
                  // String genderDigit = sequence.substring(3, 4);
                  if (nationalID.length != 14 && nationalID.isNotEmpty) {
                    showSnackBar(context,
                        "Invalid number. It should be exactly 14 digits long.");
                    return;
                  }
                  if (formKey.currentState!.validate()) {
                    Navigator.pushNamed(
                      context,
                      YourDataView.id,
                      arguments: nationalID,
                    );
                  }

                  // if (centuryCode != "2" || centuryCode != "3") {
                  //   showSnackBar(context,
                  //       "this id is wrong becuse the first digit should be 2 or 3");
                  //   return;
                  // }
                  // if (int.parse(yearDigit) > (currDate.year - 2000)) {
                  //   showSnackBar(context,
                  //       "this id is wrong becuse the first digit should be 2 or 3");
                  //   return;
                  // }
                  // if (int.parse(month) > 12) {
                  //   showSnackBar(context,
                  //       "this id is wrong becuse the first digit should be 4 or 5");
                  //   return;
                  // }
                  // if (int.parse(day) > 31) {
                  //   showSnackBar(context,
                  //       "this id is wrong becuse the first digit should be 6 or 7");
                  //   return;
                  // }
                  // if (int.parse(genderDigit) % 2 == 0) {
                  //   gender = "أنثي";
                  // }
                },
                text: "Submit",
              )
            ],
          ),
        ),
      ),
    );
  }
}
