import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:student_manager/Add/screen_add.dart';
import 'package:student_manager/Edit/screen_edit.dart';
import 'package:student_manager/Home/widgets/widgets.dart';
import 'package:student_manager/core/colors/colors.dart';
import 'package:student_manager/core/constants.dart';
import 'package:student_manager/info/screen_profile.dart';
import 'package:student_manager/my_flutter_app_icons.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2F0FE).withAlpha(240),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KAppBarColorBackground,
        title: const AppBarTitle(title: 'Student Manager'),
        centerTitle: true,
        actions: const [Icon(Icons.search)],
      ),
      body: ListView.builder(
        itemCount: itemsList.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            onResize: () => Container(color: Colors.blue,),
            key: Key(itemsList[index]),
            background: slideRightBackground(),
            secondaryBackground: slideLeftBackground(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                height: 10.h,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                       Navigator.of(context).push(MaterialPageRoute(
                          builder: (contex) => ScreenProfile()));
                    },
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
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // SizedBox(height: 10,),
                                AppBarTitle(title: itemsList[index]),
                                ksizedBox,
                                Text('College')
                                // Row(
                                //   mainAxisAlignment:
                                //       MainAxisAlignment.spaceAround,
                                //   children: [
                                //     SizedBox(
                                //       height: 30.sp,
                                //       child: ElevatedButton(
                                //         onPressed: () {},
                                //         child: const Icon(
                                //           Icons.mode_edit_rounded,
                                //         ),
                                // icon: Icon(
                                //   Icons.mode_edit_rounded,
                                //   size: 15.sp,
                                // ),
                                // label:AppBarTitle(title: 'title')
                                //       ),
                                //     ),
                                //     SizedBox(
                                // height: 30.sp,
                                //       child: ElevatedButton(
                                //         child: const Icon(
                                //           Icons.delete,
                                //         ),
                                // style: ElevatedButton.styleFrom(),
                                //           onPressed: () {},
                                // icon: Icon(
                                //   Icons.delete,
                                //   size: 15.sp,
                                // ),
                                // label: Text(
                                //   'Delete',
                                //   style: TextStyle(
                                //     // color: Colors.black,
                                //     fontSize: 14.sp,
                                //   ),
                                // )
                                //           ),
                                //     ),
                                //   ],
                                // )
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            ),
            confirmDismiss: (direction) async {
              if (direction == DismissDirection.endToStart) {
                final bool res = await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text(
                            "Are you sure you want to delete ${itemsList[index]}?"),
                        actions: <Widget>[
                          TextButton(
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: const Text(
                              "Delete",
                              style: TextStyle(color: Colors.red),
                            ),
                            onPressed: () {
                              // TODO: Delete the item from DB etc..
                              setState(() {
                                itemsList.removeAt(index);
                              });
                              
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    });
                return res;
              } else { 
                return  Navigator.of(context).push(MaterialPageRoute(
            builder: (contex) =>  ScreenEdit()));

                // TODO: Navigate to edit page;
              }
              return true;
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: KAppBarColorBackground,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (contex) =>  ScreenAdd(),
          ));
        },
        child: const Icon(MyFlutterApp.user_add),
      ),
    );
  }
}
