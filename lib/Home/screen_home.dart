import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:student_manager/Home/widgets.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE6E1CD),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF3A556F),
          title: const AppBarTitle(title: 'Student Manager'),
          actions: const [Icon(Icons.search)],
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                height: 10.h,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 20.w,
                          width: 18.w,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              'assets/images/photo-1494790108377-be9c29b29330.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AppBarTitle(title: 'this is title'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 30.sp,
                                    child: ElevatedButton.icon(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.mode_edit_rounded,
                                          size: 15.sp,
                                        ),
                                        label:AppBarTitle(title: 'title')
                                        ),
                                  ),
                                  SizedBox(
                                    height: 30.sp,
                                    child: ElevatedButton.icon(
                                        style: ElevatedButton.styleFrom(),
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.delete,
                                          size: 15.sp,
                                        ),
                                        label: Text(
                                          'Delete',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,),
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            );
          },
        ));
  }
}
