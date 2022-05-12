import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:student_manager/core/colors/colors.dart';
import 'package:student_manager/core/constants.dart';

class ScreenAdd extends StatelessWidget {
  ScreenAdd({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final String _name = '';
  final int _age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KAppBarColorBackground,
        leading: IconButton(
            onPressed: () {
              submit(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text('Add Student'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
            padding: const EdgeInsets.all(18),
            child: ListView(
              children: [
                ksizedBox,
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: commonradius,
                      ),
                      height: 20.h,
                      width: 20.h,
                      child: ClipRRect(
                        borderRadius: commonradius,
                        child: Image.asset(
                          'assets/images/photo-1494790108377-be9c29b29330.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 10.w,
                        width: 20.h,
                        decoration: const BoxDecoration(
                          color: KAppBarColorBackground,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: const Center(
                          child: Text('Upload'),
                        ),
                      ),
                    ),
                  ],
                ),
                ksizedBox30,
                TextFormField(
                  decoration: formdecoration('Enter a search term'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                ksizedBox,
                TextFormField(
                  decoration: formdecoration('College'),
                ),
                ksizedBox,
                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        decoration: formdecoration('Age'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: TextFormField(
                        decoration: formdecoration('Class'),
                      ),
                    )
                  ],
                ),
                ksizedBox,
                TextFormField(
                  decoration: formdecoration('Department'),
                )
              ],
            )),
      ),
    );
  }

  InputDecoration formdecoration(
    String hint,
  ) {
    return InputDecoration(
      border:  OutlineInputBorder(borderRadius: BorderRadius.circular(6),borderSide: BorderSide.none ),
      hintText: hint,
      filled: true,
      fillColor: Colors.grey.withOpacity(.2),
      
      
      
      
      
    );
  }

  submit(context) {
    // Validate returns true if the form is valid, or false otherwise.
    if (_formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
      Navigator.pop(context);
    }
  }
}
