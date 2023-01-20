import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('App Title'),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _dashboardMenuBtn('Name', context),
              SizerUtil.orientation == Orientation.portrait
                  ? Container(
                      // Widget for Portrait
                      width: 100.w,
                      color: Colors.red,
                      height: 20.5.h,
                    )
                  : Container(
                      // Widget for Landscape
                      width: 100.w,
                      color: Colors.deepOrange,
                      height: 12.5.h,
                    ),
              SizerUtil.deviceType == DeviceType.mobile
                  ? Container(
                      // Widget for Mobile
                      width: 100.w,
                      color: Colors.teal,
                      height: 20.5.h,
                    )
                  : Container(
                      // Widget for Tablet
                      width: 100.w,
                      color: Colors.greenAccent,
                      height: 12.5.h,
                    )
            ],
          ),
        ),
      );
    });
  }

  Container _dashboardMenuBtn(String title, cont) {
    return Container(
      width: 50.w,
      height: 95,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Icon(
              Icons.person,
              size: 50,
            ),
          ),
          const SizedBox(
            width: 16.77,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          const Align(
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
            ),
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
