import 'package:flutter/material.dart';
import 'package:platform_action_sheet/platform_action_sheet.dart';

class Screen_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Center(child: FlatButton(

            onPressed: (){
              PlatformActionSheet().displaySheet(context: context,
              title: Center(child: Text('Action Sheet'
               , style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              ),
                actions: [
                  ActionSheetAction(
                    text: "Option 1",
                    onPressed: () => Navigator.pop(context),

                  ),
                  ActionSheetAction(
                    text: "Option 2",
                    onPressed: () => Navigator.pop(context),
                  ),
                  ActionSheetAction(
                    text: "Cancel",
                    onPressed: () => Navigator.pop(context),
                    isCancel: true,
                    defaultAction: true,
                  )
                ]


              );
            },
          color: Colors.blue.shade900,
            child: Text('Action Sheet',
            style: TextStyle(
              color: Colors.white
            )
              ,),)
        ),
      ),
    );
  }
}