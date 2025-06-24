import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/Screens/home-screen.dart';
import 'package:todo/Screens/welcome.dart';
import 'package:todo/Widgets/arrow-back.dart';
import 'package:todo/Widgets/options.dart';
import 'package:todo/Widgets/prfileData.dart';
import 'package:todo/Widgets/user_Model.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final userdata = Provider.of<PrfileData>(context);
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
      ), // title of page

      body: Column(
        children: [
          Center(
            child: Consumer<UserModel>(
              // rebuild when any changes happend
              builder: (context, UserModel, child) {
                return Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      //for profile image
                      backgroundColor: Colors.grey.shade500,
                      radius: 100,

                      child:
                          UserModel.user?.image == null
                              ? Icon(
                                color: Colors.white38,
                                Icons.person,
                                size: 200,
                              )
                              : ClipOval(
                                child: Image.asset(
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.cover,
                                  "${UserModel.user!.image!}",
                                ),
                              ),
                    ),
                    CircleAvatar(
                      // for camera buttom
                      backgroundColor: Colors.black,
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder:
                                (context) => SizedBox(
                                  height: 150,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Profile",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Options(
                                            onpressed: () {
                                              UserModel.imageSelector(
                                                ImageSource.camera,
                                              );
                                              Navigator.pop(context);
                                            },
                                            title: "Camera",
                                            icon: Icons.camera_alt,
                                          ),
                                          Options(
                                            onpressed: () {
                                              UserModel.imageSelector(
                                                ImageSource.gallery,
                                              );
                                              Navigator.pop(context);
                                            },
                                            title: "Gallery",
                                            icon: Icons.image,
                                          ),
                                          if (UserModel.user?.image != null)
                                            Options(
                                              selectedimage:
                                                  UserModel.user?.image,
                                              onpressed: () {
                                                UserModel.removeImage();
                                                Navigator.pop(context);
                                              },
                                              title: "Delete",
                                              icon: Icons.delete,
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ), // whem press apear white sheet
                          );
                        },
                        icon: Icon(
                          color: Colors.white38,
                          Icons.camera_alt,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 100),
          Text(
            "Email : ${userdata.userGetEmail()}",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "Password : ${userdata.userGetPssword()}",
            style: TextStyle(color: Colors.black),
          ),
          Spacer(),
          MaterialButton(
            onPressed: () async {
              final user = await SharedPreferences.getInstance();
              user.clear();
              user.setBool("LoggedIn", false);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Welcome()),
              );
            },
            height: 48,
            minWidth: 327,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            color: Color(0xff8875FF),
            textColor: Colors.white,
            child: Text(
              "Logout",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
