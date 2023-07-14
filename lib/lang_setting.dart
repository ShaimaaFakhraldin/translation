import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LangSetting extends StatefulWidget {
  // change ui
  const LangSetting({super.key});

  @override
  State<LangSetting> createState() => _LangSettingState();
}

class _LangSettingState extends State<LangSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Change_Language'.tr()), centerTitle: true,),
      body: Container(
        alignment: Alignment.center,
        margin:const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

             switchItem(locale: context.supportedLocales[0] , title: 'English'.tr()),
             switchItem(locale: context.supportedLocales[1]  , title: 'Arabic'.tr())


          ],
        ),
      ),
    );
  }
   Widget  switchItem({ required Locale locale,   required String title}){
    return
      Container(
      decoration:  BoxDecoration(
          border: context.locale ==locale ?  Border.all(color: Colors.red) : null
      ),
      child:  ListTile(
        title: Text(title),
        onTap: () async{

          await context.setLocale(locale);
          setState(() {

          });

        },

      ),
    );
  }
}
