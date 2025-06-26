import 'package:flutter/material.dart';
import 'package:todo/Screens/welcome.dart';
import 'package:todo/generated/l10n.dart';
import 'package:intl/intl.dart';

class Prepare extends StatelessWidget {
  const Prepare({
    super.key,
    required this.buttomText,
    required this.firstColor,
    required this.secondColor,
    required this.thirdColor,
    required this.descriptionText1,
    required this.descriptionText2,
    required this.pageTitle,
    required this.buttomHeight,
    required this.buttomWidth,
    this.aimBackWidget,
    required this.aimNextWidget,
    required this.image,
    required this.imageHeight,
    required this.imageWidth,
    required this.pageNum,
  });
  final Color firstColor;
  final Color secondColor;
  final Color thirdColor;
  final String buttomText;
  final String pageTitle;
  final String descriptionText1;
  final String descriptionText2;
  final double buttomHeight;
  final double buttomWidth;
  final Widget aimNextWidget;
  final Widget? aimBackWidget;
  final String image;
  final double imageHeight;
  final double imageWidth;
  final int pageNum;
  bool isArabic() {
    return Intl.getCurrentLocale() == "ar";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        backgroundColor: Color(0xffD9D9D9),
        leading: Padding(
          padding: EdgeInsets.only(
            left: isArabic() ? 0 : 24,
            right: isArabic() ? 15 : 0,
            top: 14,
          ),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Welcome()),
              );
            },
            child: Text(
              S.of(context).Skip,
              style: TextStyle(
                color: Color(0xff0080FF),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(image, height: imageHeight, width: imageWidth),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 4,
                width: 26,
                decoration: BoxDecoration(
                  color: firstColor,
                  borderRadius: BorderRadius.circular(56),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 4,
                width: 26,
                decoration: BoxDecoration(
                  color: secondColor,
                  borderRadius: BorderRadius.circular(56),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 4,
                width: 26,
                decoration: BoxDecoration(
                  color: thirdColor,
                  borderRadius: BorderRadius.circular(56),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                pageTitle,
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                descriptionText1,
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                descriptionText2,
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Spacer(),
          pageNum == 1
              ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Spacer(),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => aimNextWidget,
                          ),
                        );
                      },
                      color: Color(0xff8875FF),
                      height: buttomHeight,
                      minWidth: buttomWidth,
                      textColor: const Color(0xFFFFFFFF),
                      child: Text(
                        buttomText,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => aimBackWidget!,
                          ),
                        );
                      },
                      child: Text(
                        S.of(context).BACK,
                        style: TextStyle(
                          color: Color(0xff0080FF),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Spacer(),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => aimNextWidget,
                          ),
                        );
                      },
                      color: Color(0xff8875FF),
                      height: buttomHeight,
                      minWidth: buttomWidth,
                      textColor: const Color(0xFFFFFFFF),
                      child: Text(
                        buttomText,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
